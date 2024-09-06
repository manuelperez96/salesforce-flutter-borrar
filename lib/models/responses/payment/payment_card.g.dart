// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentCardImpl _$$PaymentCardImplFromJson(Map<String, dynamic> json) =>
    _$PaymentCardImpl(
      cardType: json['cardType'] as String,
      creditCardExpired: json['creditCardExpired'] as bool,
    );

Map<String, dynamic> _$$PaymentCardImplToJson(_$PaymentCardImpl instance) =>
    <String, dynamic>{
      'cardType': instance.cardType,
      'creditCardExpired': instance.creditCardExpired,
    };
