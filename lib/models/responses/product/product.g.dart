// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: json['id'] as String,
      currency: json['currency'] as String,
      name: json['name'] as String,
      pageDescription: json['pageDescription'] as String,
      pageTitle: json['pageTitle'] as String,
      price: (json['price'] as num).toInt(),
      pricePerUnit: (json['pricePerUnit'] as num).toInt(),
      shortDescription: json['shortDescription'] as String,
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'currency': instance.currency,
      'name': instance.name,
      'pageDescription': instance.pageDescription,
      'pageTitle': instance.pageTitle,
      'price': instance.price,
      'pricePerUnit': instance.pricePerUnit,
      'shortDescription': instance.shortDescription,
    };
