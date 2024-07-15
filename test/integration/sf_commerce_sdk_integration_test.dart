import 'package:test/test.dart';
import 'package:sf_commerce_sdk/sf_commerce_sdk.dart';

void main() {
  group('SFCommerceSDK Integration Tests', () {
    setUp(() async {
      SFCommerceSDK.initialize(
        clientId: 'test_client_id',
        clientSecret: 'test_client_secret',
        instanceUrl: 'https://api.example.com',
        username: 'test_username',
        password: 'test_password',
      );
    });

    test('Fetch products', () async {
      final products = await SFCommerceSDK.productRepository.getProducts();

      // Add assertions based on expected product data
      expect(products.length, 3);
      expect(products.first.name, 'Product 1');
      // Add more assertions as needed
    });
  });
}
