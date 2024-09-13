// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderImpl _$$OrderImplFromJson(Map<String, dynamic> json) => _$OrderImpl(
      adjustedMerchandizeTotalTax:
          (json['adjustedMerchandizeTotalTax'] as num).toInt(),
      adjustedShippingTotalTax:
          (json['adjustedShippingTotalTax'] as num).toDouble(),
      billingAddress:
          IngAddress.fromJson(json['billingAddress'] as Map<String, dynamic>),
      channelType: json['channelType'] as String,
      confirmationStatus: json['confirmationStatus'] as String,
      couponItems: (json['couponItems'] as List<dynamic>)
          .map((e) => CouponItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdBy: json['createdBy'] as String,
      creationDate: DateTime.parse(json['creationDate'] as String),
      currency: json['currency'] as String,
      customerInfo:
          CustomerInfo.fromJson(json['customerInfo'] as Map<String, dynamic>),
      customerName: json['customerName'] as String,
      exportStatus: json['exportStatus'] as String,
      groupedTaxItems: (json['groupedTaxItems'] as List<dynamic>)
          .map((e) => GroupedTaxItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      guest: json['guest'] as bool,
      giftCertificateItems: (json['giftCertificateItems'] as List<dynamic>)
          .map((e) => GiftCertificateItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastModified: DateTime.parse(json['lastModified'] as String),
      merchandizeTotalTax: (json['merchandizeTotalTax'] as num).toInt(),
      orderNo: json['orderNo'] as String,
      orderPriceAdjustments: (json['orderPriceAdjustments'] as List<dynamic>)
          .map((e) => OrderPriceAdjustment.fromJson(e as Map<String, dynamic>))
          .toList(),
      orderToken: json['orderToken'] as String,
      orderTotal: (json['orderTotal'] as num).toDouble(),
      orderViewCode: json['orderViewCode'] as String,
      paymentInstruments: (json['paymentInstruments'] as List<dynamic>)
          .map((e) => PaymentInstrument.fromJson(e as Map<String, dynamic>))
          .toList(),
      paymentStatus: json['paymentStatus'] as String,
      productItems: (json['productItems'] as List<dynamic>)
          .map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      productSubTotal: (json['productSubTotal'] as num).toDouble(),
      productTotal: (json['productTotal'] as num).toDouble(),
      shipments: (json['shipments'] as List<dynamic>)
          .map((e) => Shipment.fromJson(e as Map<String, dynamic>))
          .toList(),
      shippingItems: (json['shippingItems'] as List<dynamic>)
          .map((e) => ShippingItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      shippingStatus: json['shippingStatus'] as String,
      shippingTotal: (json['shippingTotal'] as num).toDouble(),
      shippingTotalTax: (json['shippingTotalTax'] as num).toDouble(),
      status: json['status'] as String,
      taxation: json['taxation'] as String,
      taxTotal: (json['taxTotal'] as num).toDouble(),
    );

Map<String, dynamic> _$$OrderImplToJson(_$OrderImpl instance) =>
    <String, dynamic>{
      'adjustedMerchandizeTotalTax': instance.adjustedMerchandizeTotalTax,
      'adjustedShippingTotalTax': instance.adjustedShippingTotalTax,
      'billingAddress': instance.billingAddress,
      'channelType': instance.channelType,
      'confirmationStatus': instance.confirmationStatus,
      'couponItems': instance.couponItems,
      'createdBy': instance.createdBy,
      'creationDate': instance.creationDate.toIso8601String(),
      'currency': instance.currency,
      'customerInfo': instance.customerInfo,
      'customerName': instance.customerName,
      'exportStatus': instance.exportStatus,
      'groupedTaxItems': instance.groupedTaxItems,
      'guest': instance.guest,
      'giftCertificateItems': instance.giftCertificateItems,
      'lastModified': instance.lastModified.toIso8601String(),
      'merchandizeTotalTax': instance.merchandizeTotalTax,
      'orderNo': instance.orderNo,
      'orderPriceAdjustments': instance.orderPriceAdjustments,
      'orderToken': instance.orderToken,
      'orderTotal': instance.orderTotal,
      'orderViewCode': instance.orderViewCode,
      'paymentInstruments': instance.paymentInstruments,
      'paymentStatus': instance.paymentStatus,
      'productItems': instance.productItems,
      'productSubTotal': instance.productSubTotal,
      'productTotal': instance.productTotal,
      'shipments': instance.shipments,
      'shippingItems': instance.shippingItems,
      'shippingStatus': instance.shippingStatus,
      'shippingTotal': instance.shippingTotal,
      'shippingTotalTax': instance.shippingTotalTax,
      'status': instance.status,
      'taxation': instance.taxation,
      'taxTotal': instance.taxTotal,
    };
