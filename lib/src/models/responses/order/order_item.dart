import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_item.freezed.dart';
part 'order_item.g.dart';

@freezed
class Item with _$Item {
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

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}
