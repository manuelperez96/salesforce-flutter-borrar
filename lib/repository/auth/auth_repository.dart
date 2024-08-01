import 'package:dio/dio.dart';
import 'package:sf_commerce_sdk/models/exception/auth_exception.dart';
import 'package:sf_commerce_sdk/models/responses/access_token/access_token.dart';
import 'package:sf_commerce_sdk/repository/repository.dart';
import 'package:sf_commerce_sdk/utils/interceptors/credentials_wallet.dart';
import 'package:sf_commerce_sdk/utils/interceptors/refresh_token_interceptor.dart';
import 'package:sf_commerce_sdk/utils/pkce_helper.dart';

class AuthRepository extends Repository {
  AuthRepository({
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
    } catch (_) {
      throw UnableDoAnonymousLoginException();
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
      final response = await dio.post(
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
        throw GetAccessTokenException();
      }

      return AccessToken.fromJson(response.data);
    } catch (_) {
      throw GetAccessTokenException();
    }
  }

  Future<(String authCode, String usid)> _getAuthorizationCodes(
    String codeChallenge,
  ) async {
    try {
      final path =
          '${config.host}/shopper/auth/v1/organizations/${config.organizationId}/oauth2/authorize?response_type=code&client_id=${config.clientId}&hint=guest&code_challenge=$codeChallenge&redirect_uri=$_redirectUri';

      final response = await dio.get(
        path,
        options: Options(
          followRedirects: false,
          headers: {'Content-Type': 'application/x-www-form-urlencoded'},
        ),
      );

      return _getTokenRequestDataOnSuccess(response);
    } on DioException catch (e) {
      if (e.response?.statusCode != 303) {
        throw GetAuthorizationCodeException();
      }

      final json = (e.response?.headers.map['location'] as List?);
      if (json == null || json.isEmpty || json.first is! String) {
        throw GetAuthorizationCodeException();
      }

      return _getTokenRequestDataOnRedirect(json.first);
    }
  }

  (String code, String usid) _getTokenRequestDataOnSuccess(Response response) {
    final jsonResult = (response.data as Map<String, dynamic>);
    final code = jsonResult['code'] ?? jsonResult['authCode'];
    final usid = jsonResult['usid'];
    if (!code is String || !usid is String) {
      throw GetAuthorizationCodeException();
    }

    return (code as String, usid as String);
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
