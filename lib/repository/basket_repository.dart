import 'package:dio/dio.dart';
import 'package:sf_commerce_sdk/models/exception/basket_exceptions.dart';
import 'package:sf_commerce_sdk/models/responses/basket/basket.dart';
import 'package:sf_commerce_sdk/repository/repository.dart';

class BasketRepository extends Repository {
  BasketRepository({required super.dio, required super.config});

  Future<Basket> createBasket() async {
    try {
      final response = await dio.post<dynamic>(
        '${config.host}/checkout/shopper-baskets/v1/organizations/${config.organizationId}/baskets?siteId=${config.siteId}',
        options: Options(
          headers: {'Content-Type': 'application/json'},
        ),
      );

      final jsonResponse = response.data;
      final basket = Basket.fromJson(jsonResponse as Map<String, dynamic>);

      return basket;
    } on DioException catch (_) {
      throw const CreateBasketException();
    } catch (e) {
      throw const CreateBasketException();
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
      if (e is DioException) {
        throw const GetBasketException();
      } else {
        throw const GetBasketException();
      }
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
    } on DioException catch (_) {
      throw const AddProductToBasketException();
    } catch (_) {
      throw const AddProductToBasketException();
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
    } on DioException catch (_) {
      throw const RemoveProductFromBasketException();
    } catch (_) {
      throw const RemoveProductFromBasketException();
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
    } on DioException catch (_) {
      throw const UpdateProductInBasketException();
    } catch (_) {
      throw const UpdateProductInBasketException();
    }
  }
}
