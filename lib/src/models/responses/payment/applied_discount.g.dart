// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'applied_discount.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppliedDiscountImpl _$$AppliedDiscountImplFromJson(
        Map<String, dynamic> json) =>
    _$AppliedDiscountImpl(
      amount: (json['amount'] as num).toInt(),
      type: json['type'] as String,
    );

Map<String, dynamic> _$$AppliedDiscountImplToJson(
        _$AppliedDiscountImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'type': instance.type,
    };
