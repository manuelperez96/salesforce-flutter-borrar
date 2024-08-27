import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

/// Utility class for logging messages.
/// This class handles logging messages based on the enabled state.
/// Only in Debug Mode.
class Logger {
  static bool isEnabled = false;

  /// Logs a message if logging is enabled.
  ///
  /// [message] - The message to log.
  static void log(String message) {
    if (isEnabled) {
      if (kDebugMode) {
        print(message);
      }
    }
  }
}

/// Utility class for creating logging interceptors for Dio requests.
class NetworkUtil {
  /// Creates an [InterceptorsWrapper] with logger capabilities
  /// for Dio requests.
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
        Logger.log(
          'Response[${response.statusCode}] => DATA: ${response.data}',
        );
        return handler.next(response);
      },
      onError: (error, handler) {
        Logger.log(
          'Error[${error.response?.statusCode}] => MESSAGE: ${error.message}',
        );
        return handler.next(error);
      },
    );
  }
}
