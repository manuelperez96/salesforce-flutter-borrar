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

    final result = BasketEntity(
      basketId: basketResponseModel.basketId,
      productItems: [],
    );

    if (basketResponseModel.productItems != null &&
        basketResponseModel.productItems!.isNotEmpty) {
      final itemsIds = <String>[];

      basketResponseModel.productItems!.map(
        (e) => itemsIds.add(e.productId),
      );

      final productDetailList = await _productApi.getProducts(itemsIds);

      for (var i = 0; i < productDetailList.length; i++) {
        result.productItems.add(
          ProductCartEntity(
            name: productDetailList[i].name,
            productId: productDetailList[i].id,
            itemId: basketResponseModel.productItems![i].itemId,
            image: productDetailList[i].imageGroups[0].images[0].link,
            pricePerUnit: productDetailList[i].pricePerUnit,
            quantity: basketResponseModel.productItems![i].quantity,
            currency: productDetailList[i].currency,
          ),
        );
      }
    }
    return result;
  }

  Future<BasketEntity> addProductToBasket({
    required String basketId,
    required String productId,
    required int quantity,
    required BasketEntity currentBasket,
  }) async {
    if (currentBasket.containsProduct(productId)) {
      final itemId = currentBasket.getItemIdByProductId(productId);
      final oldQuantity = currentBasket.getQuantityByProductId(productId);

      final responseModel = await _basketApi.updateProductInBasket(
        basketId: basketId,
        basketItemId: itemId!,
        quantity: oldQuantity! + quantity,
      );

      return getEntityFromModel(responseModel);
    } else {
      final responseModel = await _basketApi.addProductToBasket(
        basketId: basketId,
        productId: productId,
        quantity: quantity,
      );
      return getEntityFromModel(responseModel);
    }
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

  Future<BasketEntity> incrementProductQuantity({
    required String basketId,
    required String basketItemId,
    required BasketEntity currentBasket,
  }) async {
    final responseModel = await _basketApi.updateProductInBasket(
      basketId: basketId,
      basketItemId: basketItemId,
      quantity: currentBasket.getQuantityByItemId(basketItemId)! + 1,
    );

    return getEntityFromModel(responseModel);
  }

  Future<BasketEntity> decrementProductQuantity({
    required String basketId,
    required String basketItemId,
    required BasketEntity currentBasket,
  }) async {
    final responseModel = await _basketApi.updateProductInBasket(
      basketId: basketId,
      basketItemId: basketItemId,
      quantity: currentBasket.getQuantityByItemId(basketItemId)! - 1,
    );

    return getEntityFromModel(responseModel);
  }

  Future<BasketEntity> getEntityFromModel(
    Basket basketResponseModel,
  ) async {
    final result = BasketEntity(
      basketId: basketResponseModel.basketId,
      productItems: [],
    );

    if (basketResponseModel.productItems != null &&
        basketResponseModel.productItems!.isNotEmpty) {
      final itemsIds = <String>[];

      basketResponseModel.productItems!.map(
        (e) => itemsIds.add(e.productId),
      );

      final productDetailList = await _productApi.getProducts(itemsIds);

      for (var i = 0; i < productDetailList.length; i++) {
        result.productItems.add(
          ProductCartEntity(
            name: productDetailList[i].name,
            productId: productDetailList[i].id,
            itemId: basketResponseModel.productItems![i].itemId,
            image: productDetailList[i].imageGroups[0].images[0].link,
            pricePerUnit: productDetailList[i].pricePerUnit,
            quantity: basketResponseModel.productItems![i].quantity,
            currency: productDetailList[i].currency,
          ),
        );
      }
    }
    return result;
  }
}
