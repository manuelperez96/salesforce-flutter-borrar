import 'package:dio/dio.dart';

class NetworkUtil {
  static InterceptorsWrapper createLoggingInterceptor() {
    return InterceptorsWrapper(
      onRequest: (options, handler) {
        print('Request[${options.method}] => PATH: ${options.path}');
        return handler.next(options);
      },
      onResponse: (response, handler) {
        print('Response[${response.statusCode}] => DATA: ${response.data}');
        return handler.next(response);
      },
      onError: (error, handler) {
        print('Error[${error.response?.statusCode}] => MESSAGE: ${error.message}');
        return handler.next(error);
      }
    );
  }
}
