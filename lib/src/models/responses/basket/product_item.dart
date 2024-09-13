import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_item.freezed.dart';
part 'product_item.g.dart';

@freezed
class ProductItem with _$ProductItem {
  factory ProductItem({
    required String productId,
    required String productName,
    required double price,
    required double adjustedTax,
    required double basePrice,
    required bool bonusProductLineItem,
    required bool gift,
    required String itemId,
    required String itemText,
    required double priceAfterItemDiscount,
    required double priceAfterOrderDiscount,
    required int quantity,
    required String shipmentId,
    required double tax,
    required double taxBasis,
    required String taxClassId,
    required double taxRate,
  }) = _ProductItem;

  factory ProductItem.fromJson(Map<String, dynamic> json) =>
      _$ProductItemFromJson(json);
}
