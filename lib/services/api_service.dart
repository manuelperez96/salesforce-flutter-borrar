import 'package:dio/dio.dart';
import '../utils/logger.dart';

class ApiService {
  final Dio _dio;

  ApiService._internal(this._dio);

  factory ApiService(String instanceUrl, String accessToken) {
    final dio = Dio(BaseOptions(
      baseUrl: instanceUrl,
      headers: {
        'Authorization': 'Bearer $accessToken',
        'Content-Type': 'application/json',
      },
    ));

    if (Logger.isEnabled) {
      dio.interceptors.add(InterceptorsWrapper(
        onRequest: (options, handler) {
          Logger.log('Request [${options.method}] => URL: ${options.uri}');
          Logger.log('Headers: ${options.headers}');
          Logger.log('Data: ${options.data}');
          return handler.next(options);
        },
        onResponse: (response, handler) {
          Logger.log('Response [${response.statusCode}] => Data: ${response.data}');
          return handler.next(response);
        },
        onError: (e, handler) {
          Logger.log('Error: ${e.message}');
          return handler.next(e);
        },
      ));
    }

    return ApiService._internal(dio);
  }

  factory ApiService.auth() {
    final dio = Dio(BaseOptions(
      baseUrl: 'https://login.salesforce.com',
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
      },
    ));

    if (Logger.isEnabled) {
      dio.interceptors.add(InterceptorsWrapper(
        onRequest: (options, handler) {
          Logger.log('Request [${options.method}] => URL: ${options.uri}');
          Logger.log('Headers: ${options.headers}');
          Logger.log('Data: ${options.data}');
          return handler.next(options);
        },
        onResponse: (response, handler) {
          Logger.log('Response [${response.statusCode}] => Data: ${response.data}');
          return handler.next(response);
        },
        onError: (e, handler) {
          Logger.log('Error: ${e.message}');
          return handler.next(e);
        },
      ));
    }

    return ApiService._internal(dio);
  }

  Dio get dio => _dio;
}
