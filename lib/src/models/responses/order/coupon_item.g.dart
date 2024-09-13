// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CouponItemImpl _$$CouponItemImplFromJson(Map<String, dynamic> json) =>
    _$CouponItemImpl(
      code: json['code'] as String,
      couponItemId: json['couponItemId'] as String,
      statusCode: json['statusCode'] as String,
      valid: json['valid'] as bool,
    );

Map<String, dynamic> _$$CouponItemImplToJson(_$CouponItemImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'couponItemId': instance.couponItemId,
      'statusCode': instance.statusCode,
      'valid': instance.valid,
    };
