import 'package:dio/dio.dart';
import 'package:sf_commerce_sdk/sf_commerce_sdk.dart';
import 'package:sf_commerce_sdk/src/utils/utils.dart';

/// {@template basket_api}
/// A class that handles basket-related API interactions within
/// the SF Commerce SDK.
///
/// This class provides methods for creating, retrieving, and updating baskets,
/// as well as adding products, payment methods, shipments,
/// and billing addresses to the basket.
///
/// - `dio`: The Dio instance used for making HTTP requests.
/// - `config`: The configuration details required for the API interactions.
/// - `storage`: The local storage used for saving and retrieving basket IDs.
/// {@endtemplate}
class BasketApi extends Api {
  /// {@macro basket_api}
  BasketApi({
    required super.dio,
    required super.config,
    required LocalStorage storage,
  }) : _storage = storage;

  /// The local storage used for saving and retrieving basket IDs.
  final LocalStorage _storage;

  /// Retrieves the basket ID from local storage.
  Future<String?> getBasketId() {
    return _storage.getBasketID();
  }

  /// Creates a new basket.
  ///
  /// Throws [CreateBasketException] if the basket creation fails.
  Future<Basket> createBasket() async {
    try {
      final response = await dio.post<dynamic>(
        '${config.host}/checkout/shopper-baskets/v1/organizations/${config.organizationId}/baskets?siteId=${config.siteId}',
        data: {
          'customerInfo': {
            'email': 'testing@capgemini.com',
          },
        },
        options: Options(
          headers: {'Content-Type': 'application/json'},
        ),
      );

      final jsonResponse = response.data as Map<String, dynamic>;

      final basket = Basket.fromJson(jsonResponse);

      await _storage.saveBasketID(basket.basketId);

      return basket;
    } catch (e) {
      throw CreateBasketException(e);
    }
  }

  /// Retrieves a basket by its ID.
  ///
  /// Throws [GetBasketException] if the basket retrieval fails.
  Future<Basket> getBasket(String basketId) async {
    try {
      final response = await dio.get<dynamic>(
        '${config.host}/checkout/shopper-baskets/v1/organizations/${config.organizationId}/baskets/$basketId?siteId=${config.siteId}',
        options: Options(
          headers: {'Content-Type': 'application/json'},
        ),
      );

      final jsonResponse = response.data;
      final basket = Basket.fromJson(jsonResponse as Map<String, dynamic>);
      return basket;
    } catch (e) {
      throw GetBasketException(e);
    }
  }

  /// Adds a product to the basket.
  ///
  /// Throws [AddProductToBasketException] if adding the product fails.
  Future<Basket> addProductToBasket({
    required String basketId,
    required String productId,
    int quantity = 1,
  }) async {
    try {
      final response = await dio.post<dynamic>(
        '${config.host}/checkout/shopper-baskets/v1/organizations/${config.organizationId}/baskets/$basketId/items?siteId=${config.siteId}',
        data: [
          {'productId': productId, 'quantity': quantity},
        ],
        options: Options(
          headers: {'Content-Type': 'application/json'},
        ),
      );
      final jsonResponse = response.data;
      final basket = Basket.fromJson(jsonResponse as Map<String, dynamic>);
      return basket;
    } catch (e) {
      throw AddProductToBasketException(e);
    }
  }

  /// Removes a product from the basket.
  ///
  /// Throws [RemoveProductFromBasketException] if removing the product fails.
  Future<Basket> removeProductFromBasket({
    required String basketId,
    required String basketItemId,
  }) async {
    try {
      final response = await dio.delete<dynamic>(
        '${config.host}/checkout/shopper-baskets/v1/organizations/${config.organizationId}/baskets/$basketId/items/$basketItemId?siteId=${config.siteId}',
        options: Options(
          headers: {'Content-Type': 'application/json'},
        ),
      );

      final jsonResponse = response.data;
      final basket = Basket.fromJson(jsonResponse as Map<String, dynamic>);
      return basket;
    } catch (e) {
      throw RemoveProductFromBasketException(e);
    }
  }

  /// Updates the quantity of a product in the basket.
  ///
  /// Throws [UpdateProductInBasketException] if updating the product fails.
  Future<Basket> updateProductInBasket({
    required String basketId,
    required String basketItemId,
    int quantity = 1,
  }) async {
    try {
      final response = await dio.patch<dynamic>(
        '${config.host}/checkout/shopper-baskets/v1/organizations/${config.organizationId}/baskets/$basketId/items/$basketItemId?siteId=${config.siteId}',
        data: {'quantity': quantity},
        options: Options(
          headers: {'Content-Type': 'application/json'},
        ),
      );
      final jsonResponse = response.data;
      final basket = Basket.fromJson(jsonResponse as Map<String, dynamic>);
      return basket;
    } catch (e) {
      throw UpdateProductInBasketException(e);
    }
  }

  /// Adds a payment method to the basket.
  ///
  /// Throws [AddPaymentMethodBasketException] if adding the payment
  /// method fails.
  Future<Basket> addPaymentMethodToBasket({
    required String basketId,
    required PaymentInstrument paymentMethod,
  }) async {
    try {
      final path =
          '${config.host}/checkout/shopper-baskets/v1/organizations/${config.organizationId}/baskets/$basketId/payment-instruments?siteId=${config.siteId}';

      final response = await dio.post<dynamic>(
        path,
        data: paymentMethod.toJson(),
        options: Options(
          headers: {'Content-Type': 'application/json'},
        ),
      );
      final jsonResponse = response.data;
      final basket = Basket.fromJson(jsonResponse as Map<String, dynamic>);
      return basket;
    } catch (e) {
      throw AddPaymentMethodBasketException(e);
    }
  }

  /// Adds a shipment to the basket.
  ///
  /// Throws [AddShipmentBasketException] if adding the shipment fails.
  Future<Basket> addShipmentBasket({
    required String basketId,
  }) async {
    try {
      final path =
          '${config.host}/checkout/shopper-baskets/v1/organizations/${config.organizationId}/baskets/$basketId/shipments/me?siteId=${config.siteId}';

      final response = await dio.patch<dynamic>(
        path,
        data: {
          'shipmentId': 'me',
          'shipmentNo': 'ignored shipment no',
          'shippingMethod': {
            'id': '001',
          },
          'shippingAddress': {
            'firstName': 'Jane',
            'lastName': 'Doe',
            'address1': '415 Mission St',
            'city': 'San Francisco',
            'postalCode': '94105',
            'stateCode': 'CA',
            'countryCode': 'US',
          },
        },
        options: Options(
          headers: {'Content-Type': 'application/json'},
        ),
      );
      final jsonResponse = response.data;
      final basket = Basket.fromJson(jsonResponse as Map<String, dynamic>);
      return basket;
    } catch (e) {
      throw AddShipmentBasketException(e);
    }
  }

  /// Adds a billing address to the basket.
  ///
  /// Throws [AddBillingAddressBasketException] if adding the billing
  /// address fails.
  Future<Basket> addBillingAddressBasket({
    required String basketId,
    required IngAddress billAddress,
  }) async {
    try {
      final path =
          '${config.host}/checkout/shopper-baskets/v1/organizations/${config.organizationId}/baskets/$basketId/billing-address?siteId=${config.siteId}';

      final response = await dio.put<dynamic>(
        path,
        data: billAddress.toJson(),
        options: Options(
          headers: {'Content-Type': 'application/json'},
        ),
      );
      final jsonResponse = response.data;
      final basket = Basket.fromJson(jsonResponse as Map<String, dynamic>);
      return basket;
    } catch (e) {
      throw AddBillingAddressBasketException(e);
    }
  }
}
