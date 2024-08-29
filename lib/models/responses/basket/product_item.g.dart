// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductItemImpl _$$ProductItemImplFromJson(Map<String, dynamic> json) =>
    _$ProductItemImpl(
      productId: json['productId'] as String,
      productName: json['productName'] as String,
      price: (json['price'] as num).toDouble(),
      adjustedTax: (json['adjustedTax'] as num).toDouble(),
      basePrice: (json['basePrice'] as num).toDouble(),
      bonusProductLineItem: json['bonusProductLineItem'] as bool,
      gift: json['gift'] as bool,
      itemId: json['itemId'] as String,
      itemText: json['itemText'] as String,
      priceAfterItemDiscount:
          (json['priceAfterItemDiscount'] as num).toDouble(),
      priceAfterOrderDiscount:
          (json['priceAfterOrderDiscount'] as num).toDouble(),
      quantity: (json['quantity'] as num).toInt(),
      shipmentId: json['shipmentId'] as String,
      tax: (json['tax'] as num).toDouble(),
      taxBasis: (json['taxBasis'] as num).toDouble(),
      taxClassId: json['taxClassId'] as String,
      taxRate: (json['taxRate'] as num).toDouble(),
    );

Map<String, dynamic> _$$ProductItemImplToJson(_$ProductItemImpl instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'productName': instance.productName,
      'price': instance.price,
      'adjustedTax': instance.adjustedTax,
      'basePrice': instance.basePrice,
      'bonusProductLineItem': instance.bonusProductLineItem,
      'gift': instance.gift,
      'itemId': instance.itemId,
      'itemText': instance.itemText,
      'priceAfterItemDiscount': instance.priceAfterItemDiscount,
      'priceAfterOrderDiscount': instance.priceAfterOrderDiscount,
      'quantity': instance.quantity,
      'shipmentId': instance.shipmentId,
      'tax': instance.tax,
      'taxBasis': instance.taxBasis,
      'taxClassId': instance.taxClassId,
      'taxRate': instance.taxRate,
    };
