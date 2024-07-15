import 'package:sf_commerce_sdk/services/api_service.dart';
import 'package:test/test.dart';
import 'package:dio/dio.dart';

void main() {
  group('ApiService', () {
    test('Factory constructor creates ApiService with correct baseUrl and headers', () {
      const instanceUrl = 'https://example.com';
      const accessToken = 'test_access_token';

      final apiService = ApiService(instanceUrl, accessToken);
      final dio = apiService.dio;

      expect(dio.options.baseUrl, instanceUrl);
      expect(dio.options.headers['Authorization'], 'Bearer $accessToken');
      expect(dio.options.headers['Content-Type'], 'application/json');
    });

    test('Factory constructor for auth creates ApiService with correct baseUrl and headers', () {
      final apiService = ApiService.auth();
      final dio = apiService.dio;

      expect(dio.options.baseUrl, 'https://login.salesforce.com');
      expect(dio.options.headers['Content-Type'], 'application/x-www-form-urlencoded');
    });

    test('Logging interceptor is added to Dio', () {
      const instanceUrl = 'https://example.com';
      const accessToken = 'test_access_token';

      final apiService = ApiService(instanceUrl, accessToken);
      final dio = apiService.dio;

      expect(
        dio.interceptors.whereType<InterceptorsWrapper>().length,
        greaterThan(0),
      );
    });

    test('Logging interceptor is added to Dio for auth', () {
      final apiService = ApiService.auth();
      final dio = apiService.dio;

      expect(
        dio.interceptors.whereType<InterceptorsWrapper>().length,
        greaterThan(0),
      );
    });
  });
}
