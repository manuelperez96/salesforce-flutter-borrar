import 'package:dio/dio.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:sf_commerce_sdk/models/sf_commerce_config.dart';
import 'package:sf_commerce_sdk/repository/product_repository.dart';
import 'package:test/test.dart';

import 'product_repository_test.mocks.dart';

// Genera el mock para Dio
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
    productRepository = ProductRepository(dio: mockDio, config: config);
  });

  group('ProductRepository', () {
    test('getProducts returns list of products on success', () async {
      // Configura el mock para devolver una respuesta simulada
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

      // Llama al método getProducts
      final products = await productRepository.getProducts(['1', '2']);

      // Verifica que el método del servicio fue llamado una vez
      verify(mockDio.get(any, options: anyNamed('options'))).called(1);

      // Verifica que el resultado sea el esperado
      expect(products.length, 2);
      expect(products[0].id, '1');
      expect(products[1].id, '2');
      expect(products[0].name, 'Product 1');
    });

    test('getProducts throws an exception on failure', () async {
      // Configura el mock para lanzar una excepción
      when(mockDio.get(any, options: anyNamed('options')))
          .thenThrow(DioException(
        requestOptions: RequestOptions(path: ''),
        error: 'Network error',
      ));

      // Verifica que el método lanza una excepción
      expect(() => productRepository.getProducts(['1', '2']), throwsException);

      // Verifica que el método del servicio fue llamado una vez
      verify(mockDio.get(any, options: anyNamed('options'))).called(1);
    });
  });
}
