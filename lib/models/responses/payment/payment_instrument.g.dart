// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_instrument.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentInstrumentImpl _$$PaymentInstrumentImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentInstrumentImpl(
      amount: (json['amount'] as num).toDouble(),
      paymentInstrumentId: json['paymentInstrumentId'] as String,
      paymentMethodId: json['paymentMethodId'] as String,
      paymentCard: json['paymentCard'] == null
          ? null
          : PaymentCard.fromJson(json['paymentCard'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PaymentInstrumentImplToJson(
        _$PaymentInstrumentImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'paymentInstrumentId': instance.paymentInstrumentId,
      'paymentMethodId': instance.paymentMethodId,
      'paymentCard': instance.paymentCard,
    };
