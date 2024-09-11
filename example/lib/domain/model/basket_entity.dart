import 'package:example/domain/model/product_cart_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'basket_entity.freezed.dart';

@freezed
class BasketEntity with _$BasketEntity {
  factory BasketEntity({
    required String basketId,
    required List<ProductCartEntity> productItems,
    double? orderTotal,
    double? shippingTotal,
    double? taxTotal,
    double? subtotal,
    String? currency,
  }) = _BasketEntity;

  const BasketEntity._();

  bool containsProduct(String productId) {
    return productItems.any(
      (element) => element.productId == productId,
    );
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
