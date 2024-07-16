import 'package:flutter/foundation.dart';

/// Utility class for logging messages.
/// This class handles logging messages based on the enabled state.
/// Only in Debug Mode.
class Logger {
  static bool isEnabled = false;

  /// Sets the logging enabled state.
  ///
  /// [enabled] - If true, logging is enabled.
  static void setEnabled(bool enabled) {
    isEnabled = enabled;
  }

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
