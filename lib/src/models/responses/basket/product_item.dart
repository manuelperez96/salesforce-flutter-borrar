import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_item.freezed.dart';
part 'product_item.g.dart';

@freezed
/// {@template product_item}
/// Represents a product item in an order or basket.
/// 
/// This class includes various fields that describe the product item,
/// including its ID, name, price, tax information, and other attributes.
/// 
/// - `productId`: The unique identifier of the product.
/// - `productName`: The name of the product.
/// - `price`: The price of the product.
/// - `adjustedTax`: The adjusted tax amount for the product.
/// - `basePrice`: The base price of the product before any discounts.
/// - `bonusProductLineItem`: Indicates if the product is a bonus item.
/// - `gift`: Indicates if the product is a gift.
/// - `itemId`: The unique identifier of the item in the order or basket.
/// - `itemText`: The text description of the item.
/// - `priceAfterItemDiscount`: The price of the product after item-specific 
/// discounts.
/// - `priceAfterOrderDiscount`: The price of the product after order-wide 
/// discounts.
/// - `quantity`: The quantity of the product.
/// - `shipmentId`: The identifier of the shipment associated with the product.
/// - `tax`: The tax amount for the product.
/// - `taxBasis`: The basis for calculating the tax.
/// - `taxClassId`: The tax class identifier for the product.
/// - `taxRate`: The tax rate applied to the product.
/// {@endtemplate}
class ProductItem with _$ProductItem {
  /// {@macro product_item}
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

  /// Creates an instance of [ProductItem] from a JSON object.
  factory ProductItem.fromJson(Map<String, dynamic> json) =>
      _$ProductItemFromJson(json);
}
