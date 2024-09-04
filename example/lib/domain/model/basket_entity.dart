import 'package:example/domain/model/product_cart_entity.dart';

class BasketEntity {
  BasketEntity({
    required this.basketId,
    required this.productItems,
  });

  final String basketId;
  final List<ProductCartEntity> productItems;

  bool containsProduct(String productId) {
    for (final prod in productItems) {
      if (prod.productId == productId) {
        return true;
      }
    }
    return false;
  }

  String? getItemIdByProductId(String productId) {
    for (final prod in productItems) {
      if (prod.productId == productId) {
        return prod.itemId;
      }
    }
    return null;
  }

  int? getQuantityByProductId(String productId) {
    for (final prod in productItems) {
      if (prod.productId == productId) {
        return prod.quantity;
      }
    }
    return null;
  }

  int? getQuantityByItemId(String basketItemId) {
    for (final prod in productItems) {
      if (prod.itemId == basketItemId) {
        return prod.quantity;
      }
    }
    return null;
  }
}
