import 'package:dio/dio.dart';
import 'package:sf_commerce_sdk/models/responses/basket/basket.dart';
import 'package:sf_commerce_sdk/repository/repository.dart';

class BasketRepository extends Repository {
  BasketRepository({required super.dio, required super.config});
  String? _basketId;

  Future<Basket> createBasket() async {
    try {
      final response = await dio.post<dynamic>(
        '${config.host}/checkout/shopper-baskets/v1/organizations/${config.organizationId}/baskets?siteId=${config.siteId}',
        options: Options(
          headers: {'Content-Type': 'application/json'},
        ),
      );

      final dynamic jsonResponse = response.data;
      final basket = Basket.fromJson(jsonResponse as Map<String, dynamic>);
      _basketId = basket.basketId;
      return basket;
    } catch (e) {
      throw Exception('Failed to create basket: $e');
    }
  }

  Future<Basket> getBasket() async {
    if (_basketId == null) await createBasket();
    try {
      final response = await dio.get<dynamic>(
        '${config.host}/checkout/shopper-baskets/v1/organizations/${config.organizationId}/baskets/$_basketId?siteId=${config.siteId}',
        options: Options(
          headers: {'Content-Type': 'application/json'},
        ),
      );

      final dynamic jsonResponse = response.data;
      final basket = Basket.fromJson(jsonResponse as Map<String, dynamic>);
      return basket;
    } catch (e) {
      throw Exception('Failed to get basket: $e');
    }
  }

  Future<Basket> addItemToBasket(
      {required String productId, int quantity = 1,}) async {
    if (_basketId == null) await createBasket();
    try {
      final response = await dio.post<dynamic>(
        '${config.host}/checkout/shopper-baskets/v1/organizations/${config.organizationId}/baskets/$_basketId/items?siteId=${config.siteId}',
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
      throw Exception('Failed to add item to basket: $e');
    }
  }

  Future<void> removeItemFromBasket(String productId) async {
    // TODO(Patri): implement removeItemFromBasket. 
    // TODO(Patri): No elimina un producto agregado anteriormente a la cesta
    // TODO(Patri): https://developer.salesforce.com/docs/commerce/commerce-api/references/shopper-baskets?meta=removeItemFromBasket

    // if (_basketId == null) await createBasket();
    // try {

    //   await dio.delete(
    //     '${config.host}/checkout/shopper-baskets/v1/organizations/${config.organizationId}/baskets/$_basketId/items/$productId?siteId=${config.siteId}',
    //     options: Options(
    //       headers: {'Content-Type': 'application/json'},
    //     ),
    //   );

    // } catch (e) {
    //   throw Exception('Failed to remove item from basket: $e');
    // }
  }

  Future<void> updateProductInBasket({
    required String productId,
    int quantity = 1,
  }) async {
    // TODO(Patri): implement https://developer.salesforce.com/docs/commerce/commerce-api/references/shopper-baskets?meta=updateItemInBasket
    // if (_basketId == null) await createBasket();
    // try {
    //   await dio.patch(
    //     '${config.host}/checkout/shopper-baskets/v1/organizations/${config.organizationId}/baskets/$_basketId/items/$productId?siteId=${config.siteId}',
    //     data: {'quantity': quantity},
    //     options: Options(
    //       headers: {'Content-Type': 'application/json'},
    //     ),
    //   );
    // } catch (e) {
    //   throw Exception('Failed to update item in basket: $e');
    // }
  }
}
