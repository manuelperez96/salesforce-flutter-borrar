// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_price_adjustment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderPriceAdjustmentImpl _$$OrderPriceAdjustmentImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderPriceAdjustmentImpl(
      appliedDiscount: AppliedDiscount.fromJson(
          json['appliedDiscount'] as Map<String, dynamic>),
      reasonCode: json['reasonCode'] as String,
      createdBy: json['createdBy'] as String,
      creationDate: DateTime.parse(json['creationDate'] as String),
      custom: json['custom'] as bool,
      lastModified: DateTime.parse(json['lastModified'] as String),
      manual: json['manual'] as bool,
      price: (json['price'] as num).toInt(),
      priceAdjustmentId: json['priceAdjustmentId'] as String,
      promotionId: json['promotionId'] as String,
    );

Map<String, dynamic> _$$OrderPriceAdjustmentImplToJson(
        _$OrderPriceAdjustmentImpl instance) =>
    <String, dynamic>{
      'appliedDiscount': instance.appliedDiscount,
      'reasonCode': instance.reasonCode,
      'createdBy': instance.createdBy,
      'creationDate': instance.creationDate.toIso8601String(),
      'custom': instance.custom,
      'lastModified': instance.lastModified.toIso8601String(),
      'manual': instance.manual,
      'price': instance.price,
      'priceAdjustmentId': instance.priceAdjustmentId,
      'promotionId': instance.promotionId,
    };
