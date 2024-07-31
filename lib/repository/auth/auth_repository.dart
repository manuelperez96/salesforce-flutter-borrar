import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';
import 'package:sf_commerce_sdk/models/exception/auth_exception.dart';
import 'package:sf_commerce_sdk/repository/repository.dart';
import 'package:sf_commerce_sdk/utils/pkce_helper.dart';

class AuthRepository extends Repository {
  AuthRepository(super.sfCommerce);

  Dio get dio => sfCommerce.dio;

  Future<void> anonymousLogin() async {
    try {} catch (_) {
      throw UnableDoAnonymousLoginException();
    }
    final (codeVerifier, codeChallenge) = PkceHelper.generateCodes();
    final (authCode, usid) = await _getAuthorizationCodes(codeChallenge);
  }

  Future<void> _getAccessToken() async {
    try {} catch (e) {
      throw Exception('Failed to get Token: $e');
    }
  }

  Future<void> getRefreshAccessToken() async {
    try {} catch (e) {
      throw Exception('Failed to getRefreshAccessToken: $e');
    }
  }

  Future<(String authCode, String usid)> _getAuthorizationCodes(
    String codeChallenge,
  ) async {
    try {
      final path =
          '${sfCommerce.host}/shopper/auth/v1/organizations/${sfCommerce.organizationId}/oauth2/authorize?response_type=code&client_id=${sfCommerce.clientId}&hint=guest&code_challenge=$codeChallenge&redirect_uri=http://localhost:3000/callback';

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
      if (json == null || json.isEmpty || !json.first is String) {
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
}
