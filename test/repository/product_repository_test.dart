import 'package:dio/dio.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:sf_commerce_sdk/models/sf_commerce_config.dart';
import 'package:sf_commerce_sdk/repository/product_repository.dart';
import 'package:test/test.dart';

import 'product_repository_test.mocks.dart';

@GenerateMocks([Dio])
void main() {
  late ProductRepository productRepository;
  late MockDio mockDio;
  late SfCommerceConfig config;

  setUp(() {
    mockDio = MockDio();
    config = SfCommerceConfig(
      clientId: '0c892f93-5262-4cab-8349-b170e0779357',
      organizationId: 'f_ecom_zzrj_031',
      siteId: 'RefArch',
      host: 'https://kv7kzm78.api.commercecloud.salesforce.com',
    );
    productRepository = ProductRepository(
      dio: mockDio,
      config: config,
    );
  });

  group('ProductRepository', () {
    group(
      'getProducts()',
      () {
        test('getProducts returns list of products on success', () async {
          final mockResponse = Response(
            requestOptions: RequestOptions(),
            data: {
              'data': [
                {
                  'id': '1',
                  'name': 'Product 1',
                  'pageDescription': 'pageDescription for Product 1',
                  'pageTitle': 'pageTitle for Product 1',
                  'price': 10,
                  'pricePerUnit': 10,
                  'shortDescription': 'shortDescription for Product 1',
                  'currency': 'USD',
                },
                {
                  'id': '2',
                  'name': 'Product 2',
                  'pageDescription': 'pageDescription for Product 2',
                  'pageTitle': 'pageTitle for Product 2',
                  'price': 20,
                  'pricePerUnit': 20,
                  'shortDescription': 'shortDescription for Product 2',
                  'currency': 'USD',
                },
              ],
            },
          );

          when(
            mockDio.get<dynamic>(any, options: anyNamed('options')),
          ).thenAnswer((_) async => mockResponse);

          final products = await productRepository.getProducts(['1', '2']);

          verify(mockDio.get<dynamic>(any, options: anyNamed('options')))
              .called(1);

          expect(products.length, 2);
          expect(products[0].id, '1');
          expect(products[1].id, '2');
          expect(products[0].name, 'Product 1');
        });

        test('getProducts throws an exception on failure', () async {
          when(mockDio.get<dynamic>(any, options: anyNamed('options')))
              .thenThrow(
            DioException(
              requestOptions: RequestOptions(),
              error: 'Network error',
            ),
          );

          expect(
            () => productRepository.getProducts(['1', '2']),
            throwsException,
          );

          verify(mockDio.get<dynamic>(any, options: anyNamed('options')))
              .called(1);
        });
      },
    );

    group(
      'getProduct()',
      () {
        test('getProduct returns a product on success', () async {
          final mockResponse = Response(
            requestOptions: RequestOptions(),
            data: {
              'id': '1',
              'name': 'Product 1',
              'pageDescription': 'pageDescription for Product 1',
              'pageTitle': 'pageTitle for Product 1',
              'price': 10,
              'pricePerUnit': 10,
              'shortDescription': 'shortDescription for Product 1',
              'currency': 'USD',
            },
          );

          when(mockDio.get<dynamic>(any, options: anyNamed('options')))
              .thenAnswer((_) async => mockResponse);

          final product = await productRepository.getProduct('1');

          verify(mockDio.get<dynamic>(any, options: anyNamed('options')))
              .called(1);

          expect(product.id, '1');
          expect(product.name, 'Product 1');
          expect(product.shortDescription, 'shortDescription for Product 1');
          expect(product.price, 10.0);
          expect(product.currency, 'USD');
        });

        test('getProduct throws an exception on failure', () async {
          when(mockDio.get<dynamic>(any, options: anyNamed('options')))
              .thenThrow(
            DioException(
              requestOptions: RequestOptions(),
              error: 'Network error',
            ),
          );

          expect(() => productRepository.getProduct('1'), throwsException);

          verify(mockDio.get<dynamic>(any, options: anyNamed('options')))
              .called(1);
        });
      },
    );

    group(
      'getProductByCategory()',
      () {
        test('getProductByCategory returns a product list on success',
            () async {
          final mockResponse = Response(
            requestOptions: RequestOptions(),
            data: {
              'hits': [
                {
                  'representedProduct': {'id': '1'},
                  'image': {
                    'alt': 'alt',
                    'disBaseLink': 'disBaseLink',
                    'link': 'link',
                    'title': 'title',
                  },
                  'productName': 'productName1',
                  'price': 10,
                  'currency': 'currency',
                  'categoryId': 'categoryId',
                },
                {
                  'representedProduct': {'id': '2'},
                  'image': {
                    'alt': 'alt',
                    'disBaseLink': 'disBaseLink',
                    'link': 'link',
                    'title': 'title',
                  },
                  'productName': 'productName2',
                  'price': 20,
                  'currency': 'currency',
                  'categoryId': 'categoryId',
                },
              ],
            },
          );

          when(mockDio.get<dynamic>(any, options: anyNamed('options')))
              .thenAnswer((_) async => mockResponse);

          final products =
              await productRepository.getProductByCategory('categoryID');

          verify(mockDio.get<dynamic>(any, options: anyNamed('options')))
              .called(1);

          expect(products.length, 2);
          expect(products[0].id, '1');
          expect(products[1].id, '2');
          expect(products[0].productName, 'productName1');
        });

        test('getProducts throws an exception on failure', () async {
          when(mockDio.get<dynamic>(any, options: anyNamed('options')))
              .thenThrow(
            DioException(
              requestOptions: RequestOptions(),
              error: 'Network error',
            ),
          );

          expect(
            () => productRepository.getProductByCategory('categoryID'),
            throwsException,
          );

          verify(mockDio.get<dynamic>(any, options: anyNamed('options')))
              .called(1);
        });
      },
    );
  });
}
