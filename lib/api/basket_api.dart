import 'package:dio/dio.dart';
import 'package:sf_commerce_sdk/api/api.dart';
import 'package:sf_commerce_sdk/models/exception/basket_exceptions.dart';
import 'package:sf_commerce_sdk/models/responses/basket/basket.dart';
import 'package:sf_commerce_sdk/utils/local_storage.dart';

class BasketApi extends Api {
  BasketApi({
    required super.dio,
    required super.config,
    required LocalStorage storage,
  }) : _storage = storage;

  final LocalStorage _storage;

  Future<String?> getBasketId() {
    return _storage.getBasketID();
  }

  Future<Basket> createBasket() async {
    try {
      final response = await dio.post<dynamic>(
        '${config.host}/checkout/shopper-baskets/v1/organizations/${config.organizationId}/baskets?siteId=${config.siteId}',
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
}
