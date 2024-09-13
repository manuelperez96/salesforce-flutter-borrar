import 'package:dio/dio.dart';
import 'package:sf_commerce_sdk/sf_commerce_sdk.dart';

/// {@template order_api}
/// A class that handles order-related API interactions within the SF 
/// Commerce SDK.
/// 
/// This class provides methods for creating and retrieving orders.
/// 
/// - `dio`: The Dio instance used for making HTTP requests.
/// - `config`: The configuration details required for the API interactions.
/// {@endtemplate}
class OrderApi extends Api {
  /// {@macro order_api}
  const OrderApi({
    required super.dio,
    required super.config,
  });

  /// Creates an order from a given basket ID.
  ///
  /// - `basketId`: The ID of the basket to create an order from.
  ///
  /// Throws [CreateOrderException] if the order creation fails.
  Future<int?> createOrder(String basketId) async {
    assert(
      basketId.isNotEmpty,
      'basketId can not be empty',
    );

    try {
      final response = await dio.post<dynamic>(
        '${config.host}/checkout/shopper-orders/v1/organizations/${config.organizationId}/orders?siteId=${config.siteId}',
        options: Options(
          headers: {'Content-Type': 'application/json'},
        ),
        data: {
          'basketId': basketId,
        },
      );

      return response.statusCode;
    } catch (e) {
      throw CreateOrderException(e);
    }
  }

  /// Retrieves an order by its ID.
  ///
  /// - `orderID`: The ID of the order to retrieve.
  ///
  /// Throws [GetOrderException] if the order retrieval fails.
  Future<Order> getOrder(String orderID) async {
    assert(
      orderID.isNotEmpty,
      'orderID can not be empty',
    );

    try {
      final response = await dio.post<dynamic>(
        '${config.host}/checkout/shopper-orders/v1/organizations/${config.organizationId}/orders/$orderID',
        options: Options(
          headers: {'Content-Type': 'application/json'},
        ),
      );

      final jsonResponse = response.data as String;
      final result = Order.fromJson(jsonResponse as Map<String, dynamic>);
      return result;
    } catch (e) {
      throw GetOrderException(e);
    }
  }
}
