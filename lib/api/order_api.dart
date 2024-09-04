import 'package:dio/dio.dart';
import 'package:sf_commerce_sdk/api/api.dart';
import 'package:sf_commerce_sdk/models/exception/order_exception.dart';
import 'package:sf_commerce_sdk/models/responses/order/order.dart';

class OrderApi extends Api {
  const OrderApi({
    required super.dio,
    required super.config,
  });

  Future<Order> createOrder(String basketID) async {
    assert(
      basketID.isNotEmpty,
      'basketID can not be empty',
    );

    try {
      final response = await dio.post<dynamic>(
        '${config.host}/checkout/shopper-orders/v1/organizations/${config.organizationId}/orders?siteId=${config.siteId}',
        options: Options(
          headers: {'Content-Type': 'application/json'},
        ),
        data: {
          'basketId': basketID,
        },
      );

      final jsonResponse = response.data as String;
      final result = Order.fromJson(jsonResponse as Map<String, dynamic>);
      return result;
    } catch (e) {
      throw CreateOrderException(e);
    }
  }

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
