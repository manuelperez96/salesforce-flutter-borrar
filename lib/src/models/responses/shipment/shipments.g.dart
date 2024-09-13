// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipments.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShipmentImpl _$$ShipmentImplFromJson(Map<String, dynamic> json) =>
    _$ShipmentImpl(
      adjustedMerchandiseTotalTax:
          (json['adjustedMerchandiseTotalTax'] as num?)?.toDouble(),
      adjustedShippingTotalTax:
          (json['adjustedShippingTotalTax'] as num?)?.toDouble(),
      gift: json['gift'] as bool,
      merchandiseTotalTax: (json['merchandiseTotalTax'] as num?)?.toDouble(),
      productSubTotal: (json['productSubTotal'] as num?)?.toDouble(),
      productTotal: (json['productTotal'] as num?)?.toDouble(),
      shipmentId: json['shipmentId'] as String,
      shipmentTotal: (json['shipmentTotal'] as num?)?.toDouble(),
      shippingStatus: json['shippingStatus'] as String?,
      shippingTotal: (json['shippingTotal'] as num?)?.toDouble(),
      shippingTotalTax: (json['shippingTotalTax'] as num?)?.toDouble(),
      taxTotal: (json['taxTotal'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$ShipmentImplToJson(_$ShipmentImpl instance) =>
    <String, dynamic>{
      'adjustedMerchandiseTotalTax': instance.adjustedMerchandiseTotalTax,
      'adjustedShippingTotalTax': instance.adjustedShippingTotalTax,
      'gift': instance.gift,
      'merchandiseTotalTax': instance.merchandiseTotalTax,
      'productSubTotal': instance.productSubTotal,
      'productTotal': instance.productTotal,
      'shipmentId': instance.shipmentId,
      'shipmentTotal': instance.shipmentTotal,
      'shippingStatus': instance.shippingStatus,
      'shippingTotal': instance.shippingTotal,
      'shippingTotalTax': instance.shippingTotalTax,
      'taxTotal': instance.taxTotal,
    };
