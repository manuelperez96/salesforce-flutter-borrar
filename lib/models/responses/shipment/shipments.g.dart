// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipments.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShipmentImpl _$$ShipmentImplFromJson(Map<String, dynamic> json) =>
    _$ShipmentImpl(
      adjustedMerchandizeTotalTax:
          (json['adjustedMerchandizeTotalTax'] as num?)?.toDouble(),
      adjustedShippingTotalTax:
          (json['adjustedShippingTotalTax'] as num?)?.toDouble(),
      gift: json['gift'] as bool,
      merchandizeTotalTax: (json['merchandizeTotalTax'] as num?)?.toDouble(),
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
