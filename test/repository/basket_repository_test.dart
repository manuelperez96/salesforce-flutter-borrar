import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:sf_commerce_sdk/models/sf_commerce_config.dart';
import 'package:sf_commerce_sdk/repository/basket_repository.dart';
import 'package:sf_commerce_sdk/models/exception/basket_exceptions.dart';

import 'basket_repository_test.mocks.dart';

@GenerateMocks([Dio])
void main() {
  late MockDio mockDio;
  late SfCommerceConfig config;
  late BasketRepository basketRepository;
  late Response<Map<String, Object>> mockResponse;

  setUp(() {
    mockDio = MockDio();
    config = SfCommerceConfig(
      clientId: '0c892f93-5262-4cab-8349-b170e0779357',
      organizationId: 'f_ecom_zzrj_031',
      siteId: 'RefArch',
      host: 'https://kv7kzm78.api.commercecloud.salesforce.com',
    );
    basketRepository = BasketRepository(dio: mockDio, config: config);

    mockResponse = Response(
      data: {
        'adjustedMerchandizeTotalTax': 0.00,
        'adjustedShippingTotalTax': 0.00,
        'agentBasket': false,
        'basketId': 'b5e5b218a91a2c9508a5ad7f70',
        'channelType': 'storefront',
        'creationDate': '2024-08-27T12:32:15.611Z',
        'currency': 'USD',
        'customerInfo': {
          'customerId': 'abxHw0ledIkHkRmrkUkaYYlbwW',
          'email': '{{user_email}}',
        },
        'productItems': [
          {
            'adjustedTax': 6.30,
            'basePrice': 29.99,
            'bonusProductLineItem': false,
            'gift': false,
            'itemId': 'cd2dd81eebb25141d73b3c457b',
            'itemText': 'Solid Silk Tie',
            'price': 29.99,
            'priceAfterItemDiscount': 29.99,
            'priceAfterOrderDiscount': 29.99,
            'productId': '029407331227M',
            'productName': 'Solid Silk Tie',
            'quantity': 1,
            'shipmentId': 'me',
            'tax': 6.30,
            'taxBasis': 29.99,
            'taxClassId': 'standard',
            'taxRate': 0.21,
          }
        ],
        'lastModified': '2024-08-27T12:32:15.615Z',
        'merchandizeTotalTax': 0.00,
        'notes': {},
        'orderTotal': 0.00,
        'productSubTotal': 0.00,
        'productTotal': 0.00,
        'shipments': [
          {
            'adjustedMerchandizeTotalTax': 0.00,
            'adjustedShippingTotalTax': 0.00,
            'gift': false,
            'merchandizeTotalTax': 0.00,
            'productSubTotal': 0.00,
            'productTotal': 0.00,
            'shipmentId': 'me',
            'shipmentTotal': 0.00,
            'shippingStatus': 'not_shipped',
            'shippingTotal': 0.00,
            'shippingTotalTax': 0.00,
            'taxTotal': 0.00,
          }
        ],
        'shippingItems': [
          {
            'adjustedTax': 0.00,
            'basePrice': 0.00,
            'itemId': '1fc3c52a9852d77bee67fe7bc9',
            'itemText': 'Shipping',
            'price': 0.00,
            'priceAfterItemDiscount': 0.00,
            'shipmentId': 'me',
            'tax': 0.00,
            'taxBasis': 0.00,
            'taxClassId': 'CustomRate',
            'taxRate': 0.0,
          }
        ],
        'shippingTotal': 0.00,
        'shippingTotalTax': 0.00,
        'taxation': 'net',
        'taxTotal': 0.00,
      },
      statusCode: 200,
      requestOptions: RequestOptions(),
    );
  });

  group('BasketRepository', () {
    test('createBasket returns a Basket on success', () async {
      when(mockDio.post<dynamic>(any, options: anyNamed('options')))
          .thenAnswer((_) async => mockResponse);

      final basket = await basketRepository.createBasket();

      expect(basket.basketId, 'b5e5b218a91a2c9508a5ad7f70');
    });

    test('createBasket throws an exception on failure', () async {
      when(mockDio.post<dynamic>(any, options: anyNamed('options'))).thenThrow(
        DioException(
          requestOptions: RequestOptions(),
          error: 'Failed to create basket',
        ),
      );

      expect(
        () async => basketRepository.createBasket(),
        throwsA(isA<CreateBasketException>()),
      );
    });

    test('getBasket returns a Basket on success', () async {
      when(mockDio.get<dynamic>(any, options: anyNamed('options')))
          .thenAnswer((_) async => mockResponse);

      final basket =
          await basketRepository.getBasket('b5e5b218a91a2c9508a5ad7f70');

      expect(basket.basketId, 'b5e5b218a91a2c9508a5ad7f70');
    });

    test('getBasket throws an exception on failure', () async {
      when(mockDio.get<dynamic>(any, options: anyNamed('options'))).thenThrow(
        DioException(
          requestOptions: RequestOptions(),
          error: 'Failed to get basket',
        ),
      );

      expect(
        () async => basketRepository.getBasket('b5e5b218a91a2c9508a5ad7f70'),
        throwsA(isA<GetBasketException>()),
      );
    });

    test('addProductToBasket returns updated Basket on success', () async {
      when(
        mockDio.post<dynamic>(
          any,
          data: anyNamed('data'),
          options: anyNamed('options'),
        ),
      ).thenAnswer((_) async => mockResponse);

      final basket = await basketRepository.addProductToBasket(
        basketId: 'b5e5b218a91a2c9508a5ad7f70',
        productId: '029407331227M',
      );

      expect(basket.basketId, 'b5e5b218a91a2c9508a5ad7f70');
    });

    test('addProductToBasket throws an exception on failure', () async {
      when(
        mockDio.post<dynamic>(
          any,
          data: anyNamed('data'),
          options: anyNamed('options'),
        ),
      ).thenThrow(
        DioException(
          requestOptions: RequestOptions(),
          error: 'Failed to add product to basket',
        ),
      );

      expect(
        () async => basketRepository.addProductToBasket(
          basketId: 'b5e5b218a91a2c9508a5ad7f70',
          productId: '029407331227M',
        ),
        throwsA(isA<AddProductToBasketException>()),
      );
    });

    test('removeProductFromBasket returns updated Basket on success', () async {
      when(mockDio.delete<dynamic>(any, options: anyNamed('options')))
          .thenAnswer((_) async => mockResponse);

      final basket = await basketRepository.removeProductFromBasket(
        basketId: 'b5e5b218a91a2c9508a5ad7f70',
        basketItemId: 'cd2dd81eebb25141d73b3c457b',
      );

      expect(basket.basketId, 'b5e5b218a91a2c9508a5ad7f70');
    });

    test('removeProductFromBasket throws an exception on failure', () async {
      when(mockDio.delete<dynamic>(any, options: anyNamed('options')))
          .thenThrow(
        DioException(
          requestOptions: RequestOptions(),
          error: 'Failed to remove product from basket',
        ),
      );

      expect(
        () async => basketRepository.removeProductFromBasket(
          basketId: 'b5e5b218a91a2c9508a5ad7f70',
          basketItemId: 'cd2dd81eebb25141d73b3c457b',
        ),
        throwsA(isA<RemoveProductFromBasketException>()),
      );
    });

    test('updateProductInBasket returns updated Basket on success', () async {
      when(
        mockDio.patch<dynamic>(
          any,
          data: anyNamed('data'),
          options: anyNamed('options'),
        ),
      ).thenAnswer((_) async => mockResponse);

      final basket = await basketRepository.updateProductInBasket(
        basketId: 'b5e5b218a91a2c9508a5ad7f70',
        basketItemId: 'cd2dd81eebb25141d73b3c457b',
        quantity: 2,
      );

      expect(basket.basketId, 'b5e5b218a91a2c9508a5ad7f70');
    });

    test('updateProductInBasket throws an exception on failure', () async {
      when(
        mockDio.patch<dynamic>(
          any,
          data: anyNamed('data'),
          options: anyNamed('options'),
        ),
      ).thenThrow(
        DioException(
          requestOptions: RequestOptions(),
          error: 'Failed to update product in basket',
        ),
      );

      expect(
        () async => basketRepository.updateProductInBasket(
          basketId: 'b5e5b218a91a2c9508a5ad7f70',
          basketItemId: 'cd2dd81eebb25141d73b3c457b',
          quantity: 2,
        ),
        throwsA(isA<UpdateProductInBasketException>()),
      );
    });
  });
}
