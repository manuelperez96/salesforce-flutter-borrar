import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sf_commerce_sdk/utils/interceptors/logger_interceptor.dart';

void main() {
  group('Logger', () {
    test('Logger is disabled by default', () {
      expect(Logger.isEnabled, isFalse);
    });

    test('Logger can be enabled', () {
      Logger.setEnabled(true);
      expect(Logger.isEnabled, isTrue);
    });

    test('Logger can be disabled', () {
      Logger.setEnabled(false);
      expect(Logger.isEnabled, isFalse);
    });

    test('Logger logs message when enabled', () {
      Logger.setEnabled(true);

      // Capture printed messages
      final log = <String>[];
      final spec = ZoneSpecification(print: (self, parent, zone, message) {
        log.add(message);
      });

      Logger.log('Test message');

      // Verify that the message was logged
      expect(log, isEmpty);

      // Run the logging code inside a custom zone
      runZoned(() {
        Logger.log('Test message');
      }, zoneSpecification: spec);

      // Verify that the message was logged
      expect(log, contains('Test message'));
    });

    test('Logger does not log message when disabled', () {
      Logger.setEnabled(false);

      // Capture printed messages
      final log = <String>[];
      final spec = ZoneSpecification(print: (self, parent, zone, message) {
        log.add(message);
      });

      // Run the logging code inside a custom zone
      runZoned(() {
        Logger.log('Test message');
      }, zoneSpecification: spec);

      // Verify that no message was logged
      expect(log, isEmpty);
    });

    test('Logger logs only in debug mode', () {
      Logger.setEnabled(true);

      debugPrint = (String? message, {int? wrapWidth}) {
        expect(message, equals('Test message in debug mode'));
      };

      Logger.log('Test message in debug mode');

      // Restore debugPrint
      debugPrint = debugPrintThrottled;
    });
  });
}
