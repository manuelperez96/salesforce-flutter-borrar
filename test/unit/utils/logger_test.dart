import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:sf_commerce_sdk/utils/interceptors/logger_interceptor.dart';

import 'logger_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<RequestInterceptorHandler>(),
  MockSpec<ErrorInterceptorHandler>(),
  MockSpec<ResponseInterceptorHandler>(),
])
void main() {
  late MockRequestInterceptorHandler requestHandler;
  late MockErrorInterceptorHandler errorHandler;
  late MockResponseInterceptorHandler responseHandler;

  setUp(
    () {
      requestHandler = MockRequestInterceptorHandler();
      errorHandler = MockErrorInterceptorHandler();
      responseHandler = MockResponseInterceptorHandler();
    },
  );
  group('Logger', () {
    test('Logger is disabled by default', () {
      expect(Logger.isEnabled, isFalse);
    });

    test('Logger can be enabled', () {
      Logger.isEnabled = true;
      expect(Logger.isEnabled, isTrue);
    });

    test('Logger can be disabled', () {
      Logger.isEnabled = false;
      expect(Logger.isEnabled, isFalse);
    });

    test('Logger logs message when enabled', () {
      Logger.isEnabled = true;

      // Capture printed messages
      final log = <String>[];
      final spec = ZoneSpecification(
        print: (self, parent, zone, message) {
          log.add(message);
        },
      );

      Logger.log('Test message');

      // Verify that the message was logged
      expect(log, isEmpty);

      // Run the logging code inside a custom zone
      runZoned(
        () {
          Logger.log('Test message');
        },
        zoneSpecification: spec,
      );

      // Verify that the message was logged
      expect(log, contains('Test message'));
    });

    test('Logger does not log message when disabled', () {
      Logger.isEnabled = false;

      // Capture printed messages
      final log = <String>[];
      final spec = ZoneSpecification(
        print: (self, parent, zone, message) {
          log.add(message);
        },
      );

      // Run the logging code inside a custom zone
      runZoned(
        () {
          Logger.log('Test message');
        },
        zoneSpecification: spec,
      );

      // Verify that no message was logged
      expect(log, isEmpty);
    });

    test('Logger logs only in debug mode', () {
      Logger.isEnabled = true;

      debugPrint = (String? message, {int? wrapWidth}) {
        expect(message, equals('Test message in debug mode'));
      };

      Logger.log('Test message in debug mode');

      // Restore debugPrint
      debugPrint = debugPrintThrottled;
    });

    test('InterceptorsWrapper onRequest call handler after the log', () {
      final interceptor = NetworkUtil.createLogsInterceptor();

      final options = RequestOptions(
        path: '/test',
        method: 'GET',
        headers: {'Authorization': 'Bearer token'},
        data: {'key': 'value'},
      );

      interceptor.onRequest(options, requestHandler);
      verify(requestHandler.next(options)).called(1);
    });

    test('InterceptorsWrapper onResponse call handler after the log', () {
      final interceptor = NetworkUtil.createLogsInterceptor();

      final response = Response<dynamic>(
        requestOptions: RequestOptions(),
      );

      interceptor.onResponse(response, responseHandler);
      verify(responseHandler.next(response)).called(1);
    });

    test('InterceptorsWrapper onError call handler after the log', () {
      final interceptor = NetworkUtil.createLogsInterceptor();

      final dioException = DioException(
        requestOptions: RequestOptions(),
      );

      interceptor.onError(dioException, errorHandler);
      verify(errorHandler.next(dioException)).called(1);
    });
  });
}
