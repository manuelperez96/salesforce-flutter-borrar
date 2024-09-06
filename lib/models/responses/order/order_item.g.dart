// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ItemImpl _$$ItemImplFromJson(Map<String, dynamic> json) => _$ItemImpl(
      adjustedTax: (json['adjustedTax'] as num).toInt(),
      basePrice: (json['basePrice'] as num).toDouble(),
      bonusProductLineItem: json['bonusProductLineItem'] as bool,
      gift: json['gift'] as bool,
      itemId: json['itemId'] as String,
      itemText: json['itemText'] as String,
      optionItems: (json['optionItems'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      price: (json['price'] as num).toDouble(),
      priceAfterItemDiscount:
          (json['priceAfterItemDiscount'] as num).toDouble(),
      priceAfterOrderDiscount:
          (json['priceAfterOrderDiscount'] as num).toDouble(),
      productId: json['productId'] as String,
      productName: json['productName'] as String,
      quantity: (json['quantity'] as num).toInt(),
      shipmentId: json['shipmentId'] as String,
      tax: (json['tax'] as num).toInt(),
      taxBasis: (json['taxBasis'] as num).toDouble(),
      taxClassId: json['taxClassId'] as String,
      taxRate: (json['taxRate'] as num).toDouble(),
      optionId: json['optionId'] as String?,
      optionValueId: json['optionValueId'] as String?,
    );

Map<String, dynamic> _$$ItemImplToJson(_$ItemImpl instance) =>
    <String, dynamic>{
      'adjustedTax': instance.adjustedTax,
      'basePrice': instance.basePrice,
      'bonusProductLineItem': instance.bonusProductLineItem,
      'gift': instance.gift,
      'itemId': instance.itemId,
      'itemText': instance.itemText,
      'optionItems': instance.optionItems,
      'price': instance.price,
      'priceAfterItemDiscount': instance.priceAfterItemDiscount,
      'priceAfterOrderDiscount': instance.priceAfterOrderDiscount,
      'productId': instance.productId,
      'productName': instance.productName,
      'quantity': instance.quantity,
      'shipmentId': instance.shipmentId,
      'tax': instance.tax,
      'taxBasis': instance.taxBasis,
      'taxClassId': instance.taxClassId,
      'taxRate': instance.taxRate,
      'optionId': instance.optionId,
      'optionValueId': instance.optionValueId,
    };
