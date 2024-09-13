// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gift_certificate_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GiftCertificateItemImpl _$$GiftCertificateItemImplFromJson(
        Map<String, dynamic> json) =>
    _$GiftCertificateItemImpl(
      amount: (json['amount'] as num).toInt(),
      giftCertificateItemId: json['giftCertificateItemId'] as String,
      recipientEmail: json['recipientEmail'] as String,
      shipmentId: json['shipmentId'] as String,
    );

Map<String, dynamic> _$$GiftCertificateItemImplToJson(
        _$GiftCertificateItemImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'giftCertificateItemId': instance.giftCertificateItemId,
      'recipientEmail': instance.recipientEmail,
      'shipmentId': instance.shipmentId,
    };
