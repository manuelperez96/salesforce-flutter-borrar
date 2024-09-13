import 'package:flutter_test/flutter_test.dart';
import 'package:sf_commerce_sdk/src/models/sf_commerce_config.dart';
import 'package:sf_commerce_sdk/src/sf_commerce_sdk.dart';
import 'package:sf_commerce_sdk/src/utils/interceptors/logger_interceptor.dart';

void main() {
  final config = SfCommerceConfig(
    clientId: 'clientId',
    organizationId: 'organizationId',
    siteId: 'siteId',
    host: 'https://host.com',
  );

  group(
    'SFCommerceSDK',
    () {
      group(
        'creation',
        () {
          test(
            'Can be instantiated',
            () async {
              expect(
                SFCommerceSDK(config: config),
                isNotNull,
              );
            },
          );
        },
      );

      group(
        'enableVerboseLogs',
        () {
          test(
            'Logger should be enable when enableVerboseLogs is true',
            () async {
              SFCommerceSDK(
                config: config,
                enableVerboseLogs: true,
              );
              expect(Logger.isEnabled, isTrue);
            },
          );

          test(
            'Logger should be disable when enableVerboseLogs is false',
            () async {
              SFCommerceSDK(
                config: SfCommerceConfig(
                  clientId: 'clientId',
                  organizationId: 'organizationId',
                  siteId: 'siteId',
                  host: 'https://host.com',
                ),
              );
              expect(Logger.isEnabled, isFalse);
            },
          );

          test(
            'setModeVerbose should enable logger',
            () async {
              SFCommerceSDK(config: config).modeVerbose = true;
              expect(Logger.isEnabled, isTrue);
            },
          );

          test(
            'setModeVerbose should disable logger',
            () async {
              SFCommerceSDK(config: config).modeVerbose = false;
              expect(Logger.isEnabled, isFalse);
            },
          );
        },
      );
    },
  );
}
