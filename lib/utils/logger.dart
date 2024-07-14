import 'package:flutter/foundation.dart';

class Logger {
  static bool isEnabled = false;

  static void setEnabled(bool enabled) {
    isEnabled = enabled;
  }

  static void log(String message) {
    if (isEnabled) {
      if (kDebugMode) {
        print(message);
      }
    }
  }
}
