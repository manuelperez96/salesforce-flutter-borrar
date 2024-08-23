// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BasketImpl _$$BasketImplFromJson(Map<String, dynamic> json) => _$BasketImpl(
      adjustedMerchandizeTotalTax:
          (json['adjustedMerchandizeTotalTax'] as num?)?.toInt(),
      adjustedShippingTotalTax:
          (json['adjustedShippingTotalTax'] as num?)?.toInt(),
      agentBasket: json['agentBasket'] as bool,
      basketId: json['basketId'] as String,
      channelType: json['channelType'] as String,
      creationDate: DateTime.parse(json['creationDate'] as String),
      currency: json['currency'] as String,
      customerInfo:
          CustomerInfo.fromJson(json['customerInfo'] as Map<String, dynamic>),
      lastModified: DateTime.parse(json['lastModified'] as String),
      merchandizeTotalTax: (json['merchandizeTotalTax'] as num?)?.toInt(),
      orderTotal: (json['orderTotal'] as num?)?.toInt(),
      productSubTotal: (json['productSubTotal'] as num).toInt(),
      productTotal: (json['productTotal'] as num).toInt(),
      shipments: (json['shipments'] as List<dynamic>)
          .map((e) => Shipment.fromJson(e as Map<String, dynamic>))
          .toList(),
      shippingItems: (json['shippingItems'] as List<dynamic>)
          .map((e) => ShippingItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      shippingTotal: (json['shippingTotal'] as num?)?.toInt(),
      shippingTotalTax: (json['shippingTotalTax'] as num?)?.toInt(),
      taxation: json['taxation'] as String,
      taxTotal: (json['taxTotal'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$BasketImplToJson(_$BasketImpl instance) =>
    <String, dynamic>{
      'adjustedMerchandizeTotalTax': instance.adjustedMerchandizeTotalTax,
      'adjustedShippingTotalTax': instance.adjustedShippingTotalTax,
      'agentBasket': instance.agentBasket,
      'basketId': instance.basketId,
      'channelType': instance.channelType,
      'creationDate': instance.creationDate.toIso8601String(),
      'currency': instance.currency,
      'customerInfo': instance.customerInfo,
      'lastModified': instance.lastModified.toIso8601String(),
      'merchandizeTotalTax': instance.merchandizeTotalTax,
      'orderTotal': instance.orderTotal,
      'productSubTotal': instance.productSubTotal,
      'productTotal': instance.productTotal,
      'shipments': instance.shipments,
      'shippingItems': instance.shippingItems,
      'shippingTotal': instance.shippingTotal,
      'shippingTotalTax': instance.shippingTotalTax,
      'taxation': instance.taxation,
      'taxTotal': instance.taxTotal,
    };
