import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_item.freezed.dart';
part 'order_item.g.dart';

/// {@template item}
/// Represents an item in an order or basket.
/// 
/// This class includes various fields that describe the item, including
/// its ID, product details, pricing, tax information, and options.
/// 
/// - `adjustedTax`: The adjusted tax amount for the item.
/// - `basePrice`: The base price of the item before any discounts.
/// - `bonusProductLineItem`: Indicates if the item is a bonus product.
/// - `gift`: Indicates if the item is a gift.
/// - `itemId`: The unique identifier of the item.
/// - `itemText`: The text description of the item.
/// - `optionItems`: A list of option items associated with the item.
/// - `price`: The price of the item.
/// - `priceAfterItemDiscount`: The price of the item after item-specific 
/// discounts.
/// - `priceAfterOrderDiscount`: The price of the item after order-wide 
/// discounts.
/// - `productId`: The unique identifier of the product.
/// - `productName`: The name of the product.
/// - `quantity`: The quantity of the item.
/// - `shipmentId`: The identifier of the shipment associated with the item.
/// - `tax`: The tax amount for the item.
/// - `taxBasis`: The basis for calculating the tax.
/// - `taxClassId`: The tax class identifier for the item.
/// - `taxRate`: The tax rate applied to the item.
/// - `optionId`: The identifier of the option associated with the item.
/// - `optionValueId`: The value identifier of the option associated with 
/// the item.
/// {@endtemplate}
@freezed
class Item with _$Item {
  /// {@macro item}
  factory Item({
    required int adjustedTax,
    required double basePrice,
    required bool bonusProductLineItem,
    required bool gift,
    required String itemId,
    required String itemText,
    required List<Item>? optionItems,
    required double price,
    required double priceAfterItemDiscount,
    required double priceAfterOrderDiscount,
    required String productId,
    required String productName,
    required int quantity,
    required String shipmentId,
    required int tax,
    required double taxBasis,
    required String taxClassId,
    required double taxRate,
    required String? optionId,
    required String? optionValueId,
  }) = _Item;

  /// Creates an instance of [Item] from a JSON object.
  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}
