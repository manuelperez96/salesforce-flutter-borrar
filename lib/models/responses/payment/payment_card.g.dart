// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentCardImpl _$$PaymentCardImplFromJson(Map<String, dynamic> json) =>
    _$PaymentCardImpl(
      expirationYear: (json['expirationYear'] as num).toInt(),
      expirationMonth: (json['expirationMonth'] as num).toInt(),
      validFromMonth: (json['validFromMonth'] as num).toInt(),
      validFromYear: (json['validFromYear'] as num).toInt(),
      issueNumber: json['issueNumber'] as String,
      maskedNumber: json['maskedNumber'] as String,
      holder: json['holder'] as String,
      cardType: json['cardType'] as String,
    );

Map<String, dynamic> _$$PaymentCardImplToJson(_$PaymentCardImpl instance) =>
    <String, dynamic>{
      'expirationYear': instance.expirationYear,
      'expirationMonth': instance.expirationMonth,
      'validFromMonth': instance.validFromMonth,
      'validFromYear': instance.validFromYear,
      'issueNumber': instance.issueNumber,
      'maskedNumber': instance.maskedNumber,
      'holder': instance.holder,
      'cardType': instance.cardType,
    };
