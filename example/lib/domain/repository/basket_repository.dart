import 'package:example/domain/model/basket_entity.dart';
import 'package:example/domain/model/product_cart_entity.dart';
import 'package:sf_commerce_sdk/api/basket_api.dart';
import 'package:sf_commerce_sdk/api/product_api.dart';
import 'package:sf_commerce_sdk/models/responses/basket/basket.dart';

class BasketRepository {
  BasketRepository({
    required BasketApi basketApi,
    required ProductApi productApi,
  })  : _basketApi = basketApi,
        _productApi = productApi;

  final BasketApi _basketApi;
  final ProductApi _productApi;

  Future<BasketEntity> createBasket() async {
    final result = await _basketApi.createBasket();
    return BasketEntity(basketId: result.basketId, productItems: []);
  }

  Future<String?> getBasketId() {
    return _basketApi.getBasketId();
  }

  Future<BasketEntity> getBasket(String basketId) async {
    final basketResponseModel = await _basketApi.getBasket(basketId);

    final list = List<ProductCartEntity>.empty(growable: true);

    if (basketResponseModel.productItems != null &&
        basketResponseModel.productItems!.isNotEmpty) {
      final itemsIds = basketResponseModel.productItems!
          .map(
            (e) => e.productId,
          )
          .toList();

      final productDetailList = await _productApi.getProducts(itemsIds);

      for (var i = 0; i < productDetailList.length; i++) {
        list.add(
          ProductCartEntity(
            name: productDetailList[i].name,
            productId: productDetailList[i].id,
            itemId: basketResponseModel.productItems![i].itemId,
            image: productDetailList[i].representativeUrlImages.first,
            pricePerUnit: productDetailList[i].pricePerUnit,
            quantity: basketResponseModel.productItems![i].quantity,
            currency: productDetailList[i].currency,
          ),
        );
      }
    }
    final result = BasketEntity(
      basketId: basketResponseModel.basketId,
      productItems: list,
    );

    return result;
  }

  Future<BasketEntity> addProductToBasket({
    required String basketId,
    required String productId,
    required int quantity,
  }) async {
    final responseModel = await _basketApi.addProductToBasket(
      basketId: basketId,
      productId: productId,
      quantity: quantity,
    );
    return getEntityFromModel(responseModel);
  }

  Future<BasketEntity> removeProductFromBasket({
    required String basketId,
    required String basketItemId,
    required BasketEntity currentBasket,
  }) async {
    final responseModel = await _basketApi.removeProductFromBasket(
      basketId: basketId,
      basketItemId: basketItemId,
    );

    return getEntityFromModel(responseModel);
  }

  Future<BasketEntity> updateProductQuantity({
    required String basketId,
    required String basketItemId,
    required int quantity,
  }) async {
    final responseModel = await _basketApi.updateProductInBasket(
      basketId: basketId,
      basketItemId: basketItemId,
      quantity: quantity,
    );

    return getEntityFromModel(responseModel);
  }

  Future<BasketEntity> getEntityFromModel(
    Basket basketResponseModel,
  ) async {
    final list = <ProductCartEntity>[];

    if (basketResponseModel.productItems != null &&
        basketResponseModel.productItems!.isNotEmpty) {
      final itemsIds = basketResponseModel.productItems!
          .map(
            (e) => e.productId,
          )
          .toList();

      final productDetailList = await _productApi.getProducts(itemsIds);

      for (var i = 0; i < productDetailList.length; i++) {
        list.add(
          ProductCartEntity(
            name: productDetailList[i].name,
            productId: productDetailList[i].id,
            itemId: basketResponseModel.productItems![i].itemId,
            image: productDetailList[i].representativeUrlImages.first,
            pricePerUnit: productDetailList[i].pricePerUnit,
            quantity: basketResponseModel.productItems![i].quantity,
            currency: productDetailList[i].currency,
          ),
        );
      }
    }
    final result = BasketEntity(
      basketId: basketResponseModel.basketId,
      productItems: list,
    );
    return result;
  }
}
