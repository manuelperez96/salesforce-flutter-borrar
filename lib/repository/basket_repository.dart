import 'package:dio/dio.dart';
import 'package:sf_commerce_sdk/models/responses/basket/basket.dart';
import 'package:sf_commerce_sdk/repository/repository.dart';

class BasketRepository extends Repository {
  BasketRepository({required super.dio, required super.config});
  String? _basketId;

  Future<Basket> createBasket() async {
    try {
      final response = await dio.post(
        '${config.host}/checkout/shopper-baskets/v1/organizations/${config.organizationId}/baskets?siteId=${config.siteId}',
        options: Options(
          headers: {'Content-Type': 'application/json'},
        ),
      );

      final dynamic jsonResponse = response.data;
      Basket basket = Basket.fromJson(jsonResponse);
      _basketId = basket.basketId;
      return basket;
    } catch (e) {
      throw Exception('Failed to create basket: $e');
    }
  }

  Future<Basket> getBasket() async {
    if (_basketId == null) await createBasket();
    try {
      final response = await dio.get(
        '${config.host}/checkout/shopper-baskets/v1/organizations/${config.organizationId}/baskets/$_basketId?siteId=${config.siteId}',
        options: Options(
          headers: {'Content-Type': 'application/json'},
        ),
      );

      final dynamic jsonResponse = response.data;
      Basket basket = Basket.fromJson(jsonResponse);
      return basket;
    } catch (e) {
      throw Exception('Failed to get basket: $e');
    }
  }
}
