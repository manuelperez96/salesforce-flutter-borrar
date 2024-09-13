// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_items.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShippingItemImpl _$$ShippingItemImplFromJson(Map<String, dynamic> json) =>
    _$ShippingItemImpl(
      adjustedTax: (json['adjustedTax'] as num?)?.toDouble(),
      basePrice: (json['basePrice'] as num?)?.toDouble(),
      itemId: json['itemId'] as String?,
      itemText: json['itemText'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      priceAfterItemDiscount:
          (json['priceAfterItemDiscount'] as num?)?.toDouble(),
      shipmentId: json['shipmentId'] as String,
      tax: (json['tax'] as num?)?.toDouble(),
      taxBasis: (json['taxBasis'] as num?)?.toDouble(),
      taxClassId: json['taxClassId'] as String?,
      taxRate: (json['taxRate'] as num?)?.toDouble(),
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
