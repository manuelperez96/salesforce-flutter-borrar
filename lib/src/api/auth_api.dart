import 'package:dio/dio.dart';
import 'package:sf_commerce_sdk/sf_commerce_sdk.dart';
import 'package:sf_commerce_sdk/src/utils/utils.dart';

/// {@template auth_api}
/// A class that handles authentication-related API interactions within
/// the SF Commerce SDK.
///
/// This class provides methods for checking login status, performing
/// anonymous login,
/// and obtaining authorization and access tokens.
///
/// - `dio`: The Dio instance used for making HTTP requests.
/// - `config`: The configuration details required for the API interactions.
/// - `storage`: The token storage used for saving and retrieving tokens.
/// {@endtemplate}
class AuthApi extends Api {
  /// {@macro auth_api}
  AuthApi({
    required super.dio,
    required super.config,
    required TokenStorage storage,
    required LocalStorage localStorage,
  })  : _storage = storage,
        _localStorage = localStorage {
    dio.interceptors.add(
      RefreshTokenInterceptor(
        organizationId: config.organizationId,
        host: config.host,
        storage: _storage,
        clientId: config.clientId,
      ),
    );
  }

  /// The token storage used for saving and retrieving tokens.
  final TokenStorage _storage;

  /// The local storage used for saving and retrieving user email.
  final LocalStorage _localStorage;

  /// The redirect URI used for authorization.
  static const _redirectUri = 'https://salesforce-flutter-ndyg35tso-manuel-perez-sotos-projects.vercel.app/callback';

  /// Checks if the user is already logged in.
  ///
  /// Returns `true` if the user is logged in, otherwise returns `false`.
  Future<bool> checkStatus() async {
    final token = await _storage.getToken();

    if (token == null) return false;
    try {
      final response = await dio.post<dynamic>(
        '${config.host}/shopper/auth/v1/organizations/${config.organizationId}/oauth2/token',
        options: Options(
          headers: {'Content-Type': 'application/x-www-form-urlencoded'},
        ),
        data: <String, dynamic>{
          'refresh_token': token.refreshToken,
          'grant_type': 'refresh_token',
          'client_id': config.clientId,
        },
      );

      if (response.data == null || response.data is! Map) {
        throw const GetAccessTokenException();
      }

      await _storage.saveToken(
        AccessToken.fromJson(response.data as Map<String, dynamic>),
      );

      return true;
    } catch (_) {
      return false;
    }
  }

  /// Performs an email & password login.
  ///
  /// Throws [UnableDoAnonymousLoginException] if the login fails.
  Future<void> emailLogin(String email) async {
    try {
      await _localStorage.saveUserEmail(email);
      //TODO (Team): WIP complete the process of login with email and password
    } catch (e) {
      throw UnableDoEmailLoginException(e);
    }
  }

  /// Performs an anonymous login.
  ///
  /// Throws [UnableDoAnonymousLoginException] if the login fails.
  Future<void> anonymousLogin() async {
    try {
      final (codeVerifier, codeChallenge) = PkceHelper.generateCodes();
      final (authCode, usid) = await _getAuthorizationCodes(codeChallenge);
      final token = await _getAccessToken(
        codeVerifier: codeVerifier,
        authCode: authCode,
        usid: usid,
      );

      await _storage.saveToken(token);
    } catch (e) {
      throw UnableDoAnonymousLoginException(e);
    }
  }

  /// Obtains authorization codes.
  ///
  /// Throws [GetAuthorizationCodeException] if obtaining the codes fails.
  Future<(String authCode, String usid)> _getAuthorizationCodes(
    String codeChallenge,
  ) async {
    try {
      final path =
          '${config.host}/shopper/auth/v1/organizations/${config.organizationId}/oauth2/authorize?response_type=code&client_id=${config.clientId}&hint=guest&code_challenge=$codeChallenge&redirect_uri=$_redirectUri';
      final response = await dio.get<dynamic>(
        path,
        options: Options(
          followRedirects: false,
          headers: {'Content-Type': 'application/x-www-form-urlencoded'},
        ),
      );

      return _getTokenRequestDataOnSuccess(response);
    } on DioException catch (e) {
      print('e.response?.statusCode: ${e.response?.statusCode} ************');
      print('Data: ${e?.response?.data} ************');

      if (e.response?.statusCode != 303) {
        throw GetAuthorizationCodeException(e);
      }

      final json = e.response?.headers.map['location'] as List?;
      if (json == null || json.isEmpty || json.first is! String) {
        throw GetAuthorizationCodeException(e);
      }

      return _getTokenRequestDataOnRedirect(json.first as String);
    }
  }

  /// Obtains an access token.
  ///
  /// Throws [GetAccessTokenException] if obtaining the token fails.
  Future<AccessToken> _getAccessToken({
    required String codeVerifier,
    required String authCode,
    required String usid,
  }) async {
    try {
      final path =
          '${config.host}/shopper/auth/v1/organizations/${config.organizationId}/oauth2/token';
      final response = await dio.post<dynamic>(
        path,
        options: Options(
          headers: {'Content-Type': 'application/x-www-form-urlencoded'},
        ),
        data: _buildBody(
          authCode: authCode,
          codeVerifier: codeVerifier,
          usid: usid,
        ),
      );

      if (response.data == null || response.data is! Map) {
        throw const GetAccessTokenException();
      }

      return AccessToken.fromJson(response.data as Map<String, dynamic>);
    } catch (e) {
      throw GetAccessTokenException(e);
    }
  }

  /// Extracts authorization codes from a successful response.
  ///
  /// Throws [GetAuthorizationCodeException] if the response does not
  /// contain valid codes.
  (String code, String usid) _getTokenRequestDataOnSuccess(
    Response<dynamic> response,
  ) {
    final jsonResult = response.data as Map<String, dynamic>;
    final code = jsonResult['code'] ?? jsonResult['authCode'];
    final usid = jsonResult['usid'];
    if (code is! String || usid is! String) {
      throw const GetAuthorizationCodeException();
    }

    return (code, usid);
  }

  /// Extracts authorization codes from a redirect location.
  ///
  /// Throws [GetAuthorizationCodeException] if the location does not
  /// contain valid codes.
  (String code, String usid) _getTokenRequestDataOnRedirect(String location) {
    final data = location.split('?')[1].split('&');
    final code =
        data.firstWhere((element) => element.startsWith('code=')).substring(5);
    final usid =
        data.firstWhere((element) => element.startsWith('usid=')).substring(5);

    return (code, usid);
  }

  /// Builds the request body for obtaining an access token.
  Map<String, dynamic> _buildBody({
    required String authCode,
    required String codeVerifier,
    required String usid,
  }) {
    return <String, dynamic>{
      'code': authCode,
      'grant_type': 'authorization_code_pkce',
      'redirect_uri': _redirectUri,
      'code_verifier': codeVerifier,
      'channel_id': config.siteId,
      'client_id': config.clientId,
      'usid': usid,
    };
  }
}
