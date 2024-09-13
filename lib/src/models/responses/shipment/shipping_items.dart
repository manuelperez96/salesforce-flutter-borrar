import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipping_items.freezed.dart';
part 'shipping_items.g.dart';

/// {@template shipping_item}
/// Represents a shipping item in a shipment.
/// 
/// This class includes various fields that describe the shipping item, including
/// its ID, prices, tax information, and shipment ID.
/// 
/// - `adjustedTax`: The adjusted tax amount for the shipping item (optional).
/// - `basePrice`: The base price of the shipping item (optional).
/// - `itemId`: The unique identifier of the shipping item (optional).
/// - `itemText`: The text description of the shipping item (optional).
/// - `price`: The price of the shipping item (optional).
/// - `priceAfterItemDiscount`: The price of the shipping item after item-specific discounts (optional).
/// - `shipmentId`: The identifier of the shipment associated with the shipping item.
/// - `tax`: The tax amount for the shipping item (optional).
/// - `taxBasis`: The basis for calculating the tax (optional).
/// - `taxClassId`: The tax class identifier for the shipping item (optional).
/// - `taxRate`: The tax rate applied to the shipping item (optional).
/// {@endtemplate}
@freezed
class ShippingItem with _$ShippingItem {
  /// {@macro shipping_item}
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

  /// Creates an instance of [ShippingItem] from a JSON object.
  factory ShippingItem.fromJson(Map<String, dynamic> json) =>
      _$ShippingItemFromJson(json);
}
