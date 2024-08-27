// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_items.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShippingItemImpl _$$ShippingItemImplFromJson(Map<String, dynamic> json) =>
    _$ShippingItemImpl(
      adjustedTax: (json['adjustedTax'] as num?)?.toInt(),
      basePrice: (json['basePrice'] as num?)?.toInt(),
      itemId: json['itemId'] as String?,
      itemText: json['itemText'] as String?,
      price: (json['price'] as num?)?.toInt(),
      priceAfterItemDiscount: (json['priceAfterItemDiscount'] as num?)?.toInt(),
      shipmentId: json['shipmentId'] as String,
      tax: (json['tax'] as num?)?.toInt(),
      taxBasis: (json['taxBasis'] as num?)?.toInt(),
      taxClassId: json['taxClassId'] as String?,
      taxRate: (json['taxRate'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ShippingItemImplToJson(_$ShippingItemImpl instance) =>
    <String, dynamic>{
      'adjustedTax': instance.adjustedTax,
      'basePrice': instance.basePrice,
      'itemId': instance.itemId,
      'itemText': instance.itemText,
      'price': instance.price,
      'priceAfterItemDiscount': instance.priceAfterItemDiscount,
      'shipmentId': instance.shipmentId,
      'tax': instance.tax,
      'taxBasis': instance.taxBasis,
      'taxClassId': instance.taxClassId,
      'taxRate': instance.taxRate,
    };
