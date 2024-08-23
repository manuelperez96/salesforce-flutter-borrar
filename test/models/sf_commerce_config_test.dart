import 'package:sf_commerce_sdk/models/sf_commerce_config.dart';
import 'package:test/test.dart';

void main() {
  group(
    SfCommerceConfig,
    () {
      test(
        'Host must start with http:// or https://',
        () async {
          expect(
            () => SfCommerceConfig(
              clientId: 'clientId',
              organizationId: 'organizationId',
              siteId: 'siteId',
              host: 'host',
            ),
            throwsA(
              predicate((e) => e is AssertionError),
            ),
          );
        },
      );
      test(
        'When fields are correct can be instantiated',
        () async {
          expect(
            SfCommerceConfig(
              clientId: 'clientId',
              organizationId: 'organizationId',
              siteId: 'siteId',
              host: 'http://host',
            ),
            isNotNull,
          );
        },
      );
      test(
        'toString() return a String',
        () async {
          expect(
            SfCommerceConfig(
              clientId: 'clientId',
              organizationId: 'organizationId',
              siteId: 'siteId',
              host: 'http://host',
            ).toString(),
            isA<String>(),
          );
        },
      );
    },
  );
}
