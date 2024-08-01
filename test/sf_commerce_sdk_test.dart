import 'package:sf_commerce_sdk/models/sf_commerce_config.dart';
import 'package:sf_commerce_sdk/sf_commerce_sdk.dart';
import 'package:sf_commerce_sdk/utils/interceptors/logger_interceptor.dart';
import 'package:test/test.dart';

void main() {
  final config = SfCommerceConfig(
    clientId: 'clientId',
    organizationId: 'organizationId',
    siteId: 'siteId',
    host: 'https://host.com',
  );
  group(
    "SFCommerceSDK",
    () {
      group(
        "creation",
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
        "enableVerboseLogs",
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
                enableVerboseLogs: false,
              );
              expect(Logger.isEnabled, isFalse);
            },
          );

          test(
            'setModeVerbose should enable logger',
            () async {
              final sfCommerce = SFCommerceSDK(
                config: config,
              );
              sfCommerce.setModeVerbose(true);
              expect(Logger.isEnabled, isTrue);
            },
          );

          test(
            'setModeVerbose should disable logger',
            () async {
              final sfCommerce = SFCommerceSDK(
                config: config,
              );

              sfCommerce.setModeVerbose(false);
              expect(Logger.isEnabled, isFalse);
            },
          );
        },
      );
    },
  );
}
