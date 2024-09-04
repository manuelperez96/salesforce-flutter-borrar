import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipping_items.freezed.dart';
part 'shipping_items.g.dart';

@freezed
class ShippingItem with _$ShippingItem {
  factory ShippingItem({
    required double? adjustedTax,
    required double? basePrice,
    required String? itemId,
    required String? itemText,
    required double? price,
    required double? priceAfterItemDiscount,
    required String shipmentId,
    required double? tax,
    required double? taxBasis,
    required String? taxClassId,
    required double? taxRate,
  }) = _ShippingItem;

  factory ShippingItem.fromJson(Map<String, dynamic> json) =>
      _$ShippingItemFromJson(json);
}
