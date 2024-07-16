import 'package:dio/dio.dart';
import 'package:sf_commerce_sdk/repository/repository.dart';
import 'package:sf_commerce_sdk/utils/token_manager.dart';

import '../models/responses/access_token/access_token.dart';
import '../utils/network_util.dart';

class AccessTokenRepository extends Repository {
  AccessTokenRepository(super.host);

  Future<void> loadAccessToken({
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
      final token = AccessToken.fromJson(response.data);
      TokenManager.setAccessToken(token);
    } catch (e) {
      throw Exception('Failed to fetch access token: $e');
    }
  }

  @override
  String get path => '/services/oauth2/token';

  @override
  Dio get dio {
    final dio = Dio(BaseOptions(
      baseUrl: "https://kv7kzm78.api.commercecloud.salesforce.com",
      headers: {
        'Content-Type': 'application/json',
      },
    ));
    // Add logger interceptor using NetworkUtil
    dio.interceptors.add(NetworkUtil.createLogsInterceptor());
    return dio;
  }
}
