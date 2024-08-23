import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipping_items.freezed.dart';
part 'shipping_items.g.dart';

@freezed
class ShippingItem with _$ShippingItem {
  factory ShippingItem({
    required int adjustedTax,
    required int basePrice,
    required String itemId,
    required String itemText,
    required int price,
    required int priceAfterItemDiscount,
    required String shipmentId,
    required int tax,
    required int taxBasis,
    required String taxClassId,
    required int taxRate,
  }) = _ShippingItem;

  factory ShippingItem.fromJson(Map<String, dynamic> json) =>
      _$ShippingItemFromJson(json);
}
