import 'package:dio/dio.dart';
import 'logger.dart';

/// Utility class for creating logging interceptors for Dio requests.
class NetworkUtil {
  /// Creates an [InterceptorsWrapper] with logger capabilities for Dio requests.
  ///
  /// This method returns an [InterceptorsWrapper] that logs details of
  /// requests, responses, and errors using the provided [Logger].
  ///
  /// Example usage:
  ///
  /// ```dart
  /// final dio = Dio();
  /// dio.interceptors.add(NetworkUtil.createLogsInterceptor());
  /// ```
  static InterceptorsWrapper createLogsInterceptor() {
    return InterceptorsWrapper(
        onRequest: (options, handler) {
          Logger.log('Request[${options.method}] => PATH: ${options.path}');
          return handler.next(options);
        },
        onResponse: (response, handler) {
          Logger.log('Response[${response.statusCode}] => DATA: ${response.data}');
          return handler.next(response);
        },
        onError: (error, handler) {
          Logger.log('Error[${error.response?.statusCode}] => MESSAGE: ${error.message}');
          return handler.next(error);
        }
    );
  }
}
