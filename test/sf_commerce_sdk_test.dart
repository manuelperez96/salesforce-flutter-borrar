import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:sf_commerce_sdk/models/sf_commerce_config.dart';
import 'package:sf_commerce_sdk/repository/auth/auth_repository.dart';
import 'package:sf_commerce_sdk/repository/category_repository.dart';
import 'package:sf_commerce_sdk/repository/product_repository.dart';
import 'package:sf_commerce_sdk/sf_commerce_sdk.dart';
import 'package:sf_commerce_sdk/utils/interceptors/logger_interceptor.dart';

import 'sf_commerce_sdk_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<AuthRepository>(),
  MockSpec<CategoryRepository>(),
  MockSpec<ProductRepository>()
])
void main() {
  late MockAuthRepository mockAuthRepository;
  late MockCategoryRepository mockCategoryRepository;
  late MockProductRepository mockProductRepository;
  final config = SfCommerceConfig(
    clientId: 'clientId',
    organizationId: 'organizationId',
    siteId: 'siteId',
    host: 'https://host.com',
  );

  setUp(
    () {
      mockAuthRepository = MockAuthRepository();
      mockCategoryRepository = MockCategoryRepository();
      mockProductRepository = MockProductRepository();
    },
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

      group(
        'anonymousLogin()',
        () {
          test(
            'anonymousLogin call the repository method',
            () {
              final sfCommerce = SFCommerceSDK(
                config: config,
              );

              sfCommerce.setAuthRepository(mockAuthRepository);
              sfCommerce.anonymousLogin();

              verify(mockAuthRepository.anonymousLogin()).called(1);
            },
          );
        },
      );

      group(
        'getRootCategories()',
        () {
          test(
            'getRootCategories call the repository method',
            () {
              final sfCommerce = SFCommerceSDK(
                config: config,
              );

              sfCommerce.setCategoryRepository(mockCategoryRepository);
              sfCommerce.getRootCategories();

              verify(mockCategoryRepository.getRootCategories()).called(1);
            },
          );
        },
      );

      group(
        'getProductsByCategory()',
        () {
          test(
            'getProductsByCategory call the repository method',
            () {
              final sfCommerce = SFCommerceSDK(
                config: config,
              );

              sfCommerce.setProductRepository(mockProductRepository);
              sfCommerce.getProductsByCategory('category');

              verify(mockProductRepository.getProductByCategory(any)).called(1);
            },
          );
        },
      );
    },
  );
}
