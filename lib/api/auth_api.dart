import 'package:dio/dio.dart';
import 'package:sf_commerce_sdk/api/api.dart';
import 'package:sf_commerce_sdk/models/exception/auth_exception.dart';
import 'package:sf_commerce_sdk/models/responses/access_token/access_token.dart';
import 'package:sf_commerce_sdk/utils/interceptors/refresh_token_interceptor.dart';
import 'package:sf_commerce_sdk/utils/interceptors/token_storage.dart';
import 'package:sf_commerce_sdk/utils/pkce_helper.dart';

class AuthApi extends Api {
  AuthApi({
    required super.dio,
    required super.config,
    required TokenStorage storage,
  }) : _storage = storage {
    dio.interceptors.add(
      RefreshTokenInterceptor(
        organizationId: config.organizationId,
        host: config.host,
        storage: _storage,
        clientId: config.clientId,
      ),
    );
  }

  final TokenStorage _storage;
  static const _redirectUri = 'http://localhost:3000/callback';

  /// Check if user was already login.
  ///
  /// Return true if user was login, otherwise return false.
  Future<bool> checkStatus() async {
    //return false;
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

  (String code, String usid) _getTokenRequestDataOnRedirect(String location) {
    final data = location.split('?')[1].split('&');
    final code =
        data.firstWhere((element) => element.startsWith('code=')).substring(5);
    final usid =
        data.firstWhere((element) => element.startsWith('usid=')).substring(5);

    return (code, usid);
  }

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
