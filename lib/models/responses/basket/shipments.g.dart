// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipments.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShipmentImpl _$$ShipmentImplFromJson(Map<String, dynamic> json) =>
    _$ShipmentImpl(
      adjustedMerchandizeTotalTax:
          (json['adjustedMerchandizeTotalTax'] as num?)?.toInt(),
      adjustedShippingTotalTax:
          (json['adjustedShippingTotalTax'] as num?)?.toInt(),
      gift: json['gift'] as bool,
      merchandizeTotalTax: (json['merchandizeTotalTax'] as num?)?.toInt(),
      productSubTotal: (json['productSubTotal'] as num?)?.toInt(),
      productTotal: (json['productTotal'] as num?)?.toInt(),
      shipmentId: json['shipmentId'] as String,
      shipmentTotal: (json['shipmentTotal'] as num?)?.toInt(),
      shippingStatus: json['shippingStatus'] as String?,
      shippingTotal: (json['shippingTotal'] as num?)?.toInt(),
      shippingTotalTax: (json['shippingTotalTax'] as num?)?.toInt(),
      taxTotal: (json['taxTotal'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ShipmentImplToJson(_$ShipmentImpl instance) =>
    <String, dynamic>{
      'adjustedMerchandizeTotalTax': instance.adjustedMerchandizeTotalTax,
      'adjustedShippingTotalTax': instance.adjustedShippingTotalTax,
      'gift': instance.gift,
      'merchandizeTotalTax': instance.merchandizeTotalTax,
      'productSubTotal': instance.productSubTotal,
      'productTotal': instance.productTotal,
      'shipmentId': instance.shipmentId,
      'shipmentTotal': instance.shipmentTotal,
      'shippingStatus': instance.shippingStatus,
      'shippingTotal': instance.shippingTotal,
      'shippingTotalTax': instance.shippingTotalTax,
      'taxTotal': instance.taxTotal,
    };
