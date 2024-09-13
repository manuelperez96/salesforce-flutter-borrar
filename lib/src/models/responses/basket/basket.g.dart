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
      billingAddress: json['billingAddress'] == null
          ? null
          : IngAddress.fromJson(json['billingAddress'] as Map<String, dynamic>),
      basketId: json['basketId'] as String,
      channelType: json['channelType'] as String,
      couponItems: (json['couponItems'] as List<dynamic>?)
          ?.map((e) => CouponItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      creationDate: DateTime.parse(json['creationDate'] as String),
      currency: json['currency'] as String,
      customerInfo:
          CustomerInfo.fromJson(json['customerInfo'] as Map<String, dynamic>),
      lastModified: DateTime.parse(json['lastModified'] as String),
      merchandizeTotalTax: (json['merchandizeTotalTax'] as num?)?.toInt(),
      orderTotal: (json['orderTotal'] as num?)?.toDouble(),
      paymentInstruments: (json['paymentInstruments'] as List<dynamic>?)
          ?.map((e) => PaymentInstrument.fromJson(e as Map<String, dynamic>))
          .toList(),
      productItems: (json['productItems'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      productSubTotal: (json['productSubTotal'] as num).toDouble(),
      productTotal: (json['productTotal'] as num).toDouble(),
      shipments: (json['shipments'] as List<dynamic>)
          .map((e) => Shipment.fromJson(e as Map<String, dynamic>))
          .toList(),
      shippingItems: (json['shippingItems'] as List<dynamic>)
          .map((e) => ShippingItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      shippingTotal: (json['shippingTotal'] as num?)?.toDouble(),
      shippingTotalTax: (json['shippingTotalTax'] as num?)?.toDouble(),
      taxation: json['taxation'] as String,
      taxTotal: (json['taxTotal'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$BasketImplToJson(_$BasketImpl instance) =>
    <String, dynamic>{
      'adjustedMerchandizeTotalTax': instance.adjustedMerchandizeTotalTax,
      'adjustedShippingTotalTax': instance.adjustedShippingTotalTax,
      'agentBasket': instance.agentBasket,
      'billingAddress': instance.billingAddress,
      'basketId': instance.basketId,
      'channelType': instance.channelType,
      'couponItems': instance.couponItems,
      'creationDate': instance.creationDate.toIso8601String(),
      'currency': instance.currency,
      'customerInfo': instance.customerInfo,
      'lastModified': instance.lastModified.toIso8601String(),
      'merchandizeTotalTax': instance.merchandizeTotalTax,
      'orderTotal': instance.orderTotal,
      'paymentInstruments': instance.paymentInstruments,
      'productItems': instance.productItems,
      'productSubTotal': instance.productSubTotal,
      'productTotal': instance.productTotal,
      'shipments': instance.shipments,
      'shippingItems': instance.shippingItems,
      'shippingTotal': instance.shippingTotal,
      'shippingTotalTax': instance.shippingTotalTax,
      'taxation': instance.taxation,
      'taxTotal': instance.taxTotal,
    };
