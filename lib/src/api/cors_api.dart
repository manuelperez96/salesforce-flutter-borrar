import 'package:dio/dio.dart';
import 'package:sf_commerce_sdk/sf_commerce_sdk.dart';
import 'package:sf_commerce_sdk/src/utils/utils.dart';

class CorsApi extends Api {
  CorsApi({
    required super.dio,
    required super.config,
    required TokenStorage storage,
  }) : _storage = storage {
    // dio.interceptors.add(
    //   RefreshTokenInterceptor(
    //     organizationId: config.organizationId,
    //     host: config.host,
    //     storage: _storage,
    //     clientId: config.clientId,
    //   ),
    // );
  }

  /// The token storage used for saving and retrieving tokens.
  final TokenStorage _storage;

  /// Obtains CORS configuration.
  //TODO (Patri) : https://developer.salesforce.com/docs/commerce/commerce-api/guide/cors.html
  Future<void> getCors() async {
    try {
      final path =
          '${config.host}/configuration/cors/v1/organizations/${config.organizationId}/cors?siteId=${config.siteId}';
      final response = await dio.get<dynamic>(
        path,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer ${await _storage.getToken()}',
            'Access-Control-Request-Method': 'GET, POST, PUT, DELETE, OPTIONS',
            'Access-Control-Request-Headers': 'Content-Type, Authorization',
            'access-control-allow-origin':
                'https://kv7kzm78.api.commercecloud.salesforce.com',
          },
        ),
      );
      print(response);
    } on DioException catch (e) {
      if (e.response?.statusCode != 401) {
        throw GetAuthorizationCodeException(e);
      } else {
        print('Unauthorized: ${e.response?.data}');
      }
    }
  }
}
