// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: json['id'] as String,
      currency: json['currency'] as String,
      imageGroups: (json['imageGroups'] as List<dynamic>)
          .map((e) => ImageGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
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
      'imageGroups': instance.imageGroups,
      'name': instance.name,
      'pageDescription': instance.pageDescription,
      'pageTitle': instance.pageTitle,
      'price': instance.price,
      'pricePerUnit': instance.pricePerUnit,
      'shortDescription': instance.shortDescription,
    };

_$ImageGroupImpl _$$ImageGroupImplFromJson(Map<String, dynamic> json) =>
    _$ImageGroupImpl(
      images: (json['images'] as List<dynamic>)
          .map((e) => Image.fromJson(e as Map<String, dynamic>))
          .toList(),
      viewType: json['viewType'] as String,
    );

Map<String, dynamic> _$$ImageGroupImplToJson(_$ImageGroupImpl instance) =>
    <String, dynamic>{
      'images': instance.images,
      'viewType': instance.viewType,
    };
