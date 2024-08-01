import 'package:sf_commerce_sdk/sf_commerce_sdk.dart';
import 'package:sf_commerce_sdk/utils/interceptors/logger_interceptor.dart';
import 'package:test/test.dart';

void main() {
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
                SFCommerceSDK(
                  clientId: 'clientId',
                  organizationId: 'organizationId',
                  siteId: 'siteId',
                  host: 'https://host.com',
                ),
                isNotNull,
              );
            },
          );

          test(
            'Host must start with http:// or https://',
            () async {
              expect(
                () => SFCommerceSDK(
                  clientId: 'clientId',
                  organizationId: 'organizationId',
                  siteId: 'siteId',
                  host: 'host.com',
                ),
                throwsA(predicate((e) => e is AssertionError)),
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
                clientId: 'clientId',
                organizationId: 'organizationId',
                siteId: 'siteId',
                host: 'https://host.com',
                enableVerboseLogs: true,
              );
              expect(Logger.isEnabled, isTrue);
            },
          );

          test(
            'Logger should be disable when enableVerboseLogs is false',
            () async {
              SFCommerceSDK(
                clientId: 'clientId',
                organizationId: 'organizationId',
                siteId: 'siteId',
                host: 'https://host.com',
                enableVerboseLogs: false,
              );
              expect(Logger.isEnabled, isFalse);
            },
          );

          test(
            'setModeVerbose should enable logger',
            () async {
              final sfCommerce = SFCommerceSDK(
                clientId: 'clientId',
                organizationId: 'organizationId',
                siteId: 'siteId',
                host: 'https://host.com',
              );
              sfCommerce.setModeVerbose(true);
              expect(Logger.isEnabled, isTrue);
            },
          );

          test(
            'setModeVerbose should disable logger',
            () async {
              final sfCommerce = SFCommerceSDK(
                clientId: 'clientId',
                organizationId: 'organizationId',
                siteId: 'siteId',
                host: 'https://host.com',
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
