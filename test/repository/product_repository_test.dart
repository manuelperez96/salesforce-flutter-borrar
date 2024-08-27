import 'package:dio/dio.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:sf_commerce_sdk/data/cache/cache_memory.dart';
import 'package:sf_commerce_sdk/models/responses/product/product.dart';
import 'package:sf_commerce_sdk/models/sf_commerce_config.dart';
import 'package:sf_commerce_sdk/repository/product_repository.dart';
import 'package:test/test.dart';

import '../helpers/repository/product_repository.dart';
import 'product_repository_test.mocks.dart';

@GenerateMocks([Dio], customMocks: [MockSpec<MemoryCache<Product>>()])
void main() {
  late ProductRepository productRepository;
  late MockDio mockDio;
  late SfCommerceConfig config;
  late MockMemoryCache mockMemoryCache;

  setUp(() {
    mockDio = MockDio();
    mockMemoryCache = MockMemoryCache();
    config = SfCommerceConfig(
      clientId: '0c892f93-5262-4cab-8349-b170e0779357',
      organizationId: 'f_ecom_zzrj_031',
      siteId: 'RefArch',
      host: 'https://kv7kzm78.api.commercecloud.salesforce.com',
    );
    productRepository = ProductRepository(
      dio: mockDio,
      config: config,
      memoryCache: mockMemoryCache,
    );
  });

  group('ProductRepository', () {
    group(
      'getProducts()',
      () {
        test('getProducts returns list of products on success', () async {
          final mockResponse = Response(
            requestOptions: RequestOptions(path: ''),
            data: {
              'data': [
                {
                  'id': '1',
                  'name': 'Product 1',
                  'description': 'Description for Product 1',
                  'price': 10.0,
                  'currency': 'USD'
                },
                {
                  'id': '2',
                  'name': 'Product 2',
                  'description': 'Description for Product 2',
                  'price': 20.0,
                  'currency': 'USD'
                },
              ]
            },
          );

          when(mockDio.get(any, options: anyNamed('options')))
              .thenAnswer((_) async => mockResponse);

          final products = await productRepository.getProducts(['1', '2']);

          verify(mockDio.get(any, options: anyNamed('options'))).called(1);

          expect(products.length, 2);
          expect(products[0].id, '1');
          expect(products[1].id, '2');
          expect(products[0].name, 'Product 1');
        });

        test('getProducts throws an exception on failure', () async {
          when(mockDio.get(any, options: anyNamed('options')))
              .thenThrow(DioException(
            requestOptions: RequestOptions(path: ''),
            error: 'Network error',
          ));

          expect(
              () => productRepository.getProducts(['1', '2']), throwsException);

          verify(mockDio.get(any, options: anyNamed('options'))).called(1);
        });
      },
    );

    group(
      'getProduct()',
      () {
        test('getProduct returns a product on success', () async {
          final mockResponse = Response(
            requestOptions: RequestOptions(path: ''),
            data: {
              'id': '1',
              'name': 'Product 1',
              'description': 'Description for Product 1',
              'price': 10.0,
              'currency': 'USD'
            },
          );

          when(mockMemoryCache.hasKey(any)).thenReturn(false);

          when(mockDio.get(any, options: anyNamed('options')))
              .thenAnswer((_) async => mockResponse);

          final product = await productRepository.getProduct('1');

          verify(mockDio.get(any, options: anyNamed('options'))).called(1);

          expect(product.id, '1');
          expect(product.name, 'Product 1');
          expect(product.description, 'Description for Product 1');
          expect(product.price, 10.0);
          expect(product.currency, 'USD');
        });

        test('getProduct throws an exception on failure', () async {
          when(mockMemoryCache.hasKey(any)).thenReturn(false);

          when(mockDio.get(any, options: anyNamed('options')))
              .thenThrow(DioException(
            requestOptions: RequestOptions(path: ''),
            error: 'Network error',
          ));

          expect(() => productRepository.getProduct('1'), throwsException);

          verify(mockDio.get(any, options: anyNamed('options'))).called(1);
        });

        test('when the cache has data, return the data cached', () async {
          when(mockMemoryCache.hasKey(any)).thenReturn(true);
          when(mockMemoryCache.getValue(any)).thenReturn(productModel);

          final result = await productRepository.getProduct('1');

          expect(result, productModel);
        });
      },
    );

    group(
      'getProductByCategory()',
      () {
        test('getProductByCategory returns a product list on success',
            () async {
          final mockResponse = Response(
            requestOptions: RequestOptions(path: ''),
            data: {
              'hits': [
                {
                  'productId': '1',
                  'productName': 'Product 1',
                  'image': {'link': 'imageIUrl'},
                  'price': 10.0,
                  'currency': 'USD'
                },
                {
                  'productId': '2',
                  'productName': 'Product 2',
                  'image': {'link': 'imageIUrl2'},
                  'price': 20.0,
                  'currency': 'USD'
                },
              ]
            },
          );

          when(mockDio.get(any, options: anyNamed('options')))
              .thenAnswer((_) async => mockResponse);

          final products =
              await productRepository.getProductByCategory('categoryID');

          verify(mockDio.get(any, options: anyNamed('options'))).called(1);

          expect(products.length, 2);
          expect(products[0].productId, '1');
          expect(products[1].productId, '2');
          expect(products[0].productName, 'Product 1');
        });

        test('getProducts throws an exception on failure', () async {
          when(mockDio.get(any, options: anyNamed('options')))
              .thenThrow(DioException(
            requestOptions: RequestOptions(path: ''),
            error: 'Network error',
          ));

          expect(() => productRepository.getProductByCategory('categoryID'),
              throwsException);

          verify(mockDio.get(any, options: anyNamed('options'))).called(1);
        });
      },
    );
  });
}
