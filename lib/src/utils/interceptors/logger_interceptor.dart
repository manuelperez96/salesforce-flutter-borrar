import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

/// {@template logger}
/// Utility class for logging messages.
/// 
/// This class handles logging messages based on the enabled state.
/// Logging is only performed in Debug Mode.
/// 
/// - `isEnabled`: A static boolean that determines if logging is enabled.
/// {@endtemplate}
class Logger {
  /// determines if logging is enabled.
  static bool isEnabled = false;

  /// Logs a message if logging is enabled.
  ///
  /// - `message`: The message to log.
  static void log(String message) {
    if (isEnabled) {
      if (kDebugMode) {
        print(message);
      }
    }
  }
}

/// {@template network_util}
/// Utility class for creating logging interceptors for Dio requests.
/// 
/// This class provides a method to create an [InterceptorsWrapper] that logs
/// details of requests, responses, and errors using the provided [Logger].
/// {@endtemplate}
class NetworkUtil {
  /// {@macro network_util}
  /// 
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
