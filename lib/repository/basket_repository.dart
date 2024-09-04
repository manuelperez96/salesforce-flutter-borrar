import 'package:dio/dio.dart';
import 'package:sf_commerce_sdk/models/basket_entity.dart';
import 'package:sf_commerce_sdk/models/exception/basket_exceptions.dart';
import 'package:sf_commerce_sdk/models/responses/basket/basket.dart';
import 'package:sf_commerce_sdk/repository/repository.dart';
import 'package:sf_commerce_sdk/utils/interceptors/token_storage.dart';

class BasketRepository extends Repository {
  BasketRepository({
    required super.dio,
    required super.config,
    required TokenStorage storage,
  }) : _storage = storage;

  final TokenStorage _storage;

  Future<String?> getBasketId() {
    return _storage.getBasketID();
  }

  Future<BasketEntity> createBasket() async {
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

  Future<BasketEntity> getBasket(String basketId) async {
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

  Future<BasketEntity> addProductToBasket({
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

  Future<BasketEntity> removeProductFromBasket({
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

  Future<BasketEntity> updateProductInBasket({
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

  Future<BasketEntity> incrementProductQuantity({
    required String basketId,
    required String basketItemId,
  }) {}
  Future<BasketEntity> decrementProductQuantity({
    required String basketId,
    required String basketItemId,
  }) {}
}
