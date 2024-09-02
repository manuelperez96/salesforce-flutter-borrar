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
      price: (json['price'] as num).toDouble(),
      pricePerUnit: (json['pricePerUnit'] as num).toInt(),
      shortDescription: json['shortDescription'] as String,
      minOrderQuantity: (json['minOrderQuantity'] as num?)?.toInt(),
      variationAttributes: (json['variationAttributes'] as List<dynamic>?)
          ?.map((e) =>
              ProductVariationAttribute.fromJson(e as Map<String, dynamic>))
          .toList(),
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
      'minOrderQuantity': instance.minOrderQuantity,
      'variationAttributes': instance.variationAttributes,
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

_$ProductVariationAttributeImpl _$$ProductVariationAttributeImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductVariationAttributeImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      values: (json['values'] as List<dynamic>)
          .map((e) => ValuesVariation.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductVariationAttributeImplToJson(
        _$ProductVariationAttributeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'values': instance.values,
    };

_$ValuesVariationImpl _$$ValuesVariationImplFromJson(
        Map<String, dynamic> json) =>
    _$ValuesVariationImpl(
      name: json['name'] as String,
      orderable: json['orderable'] as bool,
      value: json['value'] as String,
    );

Map<String, dynamic> _$$ValuesVariationImplToJson(
        _$ValuesVariationImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'orderable': instance.orderable,
      'value': instance.value,
    };
