import 'package:dio/dio.dart';
import 'package:sf_commerce_sdk/repository/repository.dart';

import '../models/responses/access_token/access_token.dart';

class AccessTokenRepository extends Repository {
  AccessTokenRepository(super.dio);

  Future<AccessToken> fetchAccessToken({
    required String clientId,
    required String clientSecret,
    required String username,
    required String password,
  }) async {
    try {
      final response = await dio.post(
        path,
        data: {
          'grant_type': 'password',
          'client_id': clientId,
          'client_secret': clientSecret,
          'username': username,
          'password': password,
        },
        options: Options(headers: {
          'Content-Type': 'application/x-www-form-urlencoded',
        }),
      );
      return AccessToken.fromJson(response.data);
    } catch (e) {
      throw Exception('Failed to fetch access token: $e');
    }
  }

  @override
  String get path => '/services/oauth2/token';
}
