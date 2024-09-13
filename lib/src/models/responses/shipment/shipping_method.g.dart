// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_method.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShippingMethodImpl _$$ShippingMethodImplFromJson(Map<String, dynamic> json) =>
    _$ShippingMethodImpl(
      description: json['description'] as String,
      id: json['id'] as String,
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$$ShippingMethodImplToJson(
        _$ShippingMethodImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
    };
