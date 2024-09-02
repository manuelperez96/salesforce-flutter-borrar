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
      pricePerUnit: (json['pricePerUnit'] as num).toDouble(),
      shortDescription: json['shortDescription'] as String,
      minOrderQuantity: (json['minOrderQuantity'] as num?)?.toInt(),
      inventory: Inventory.fromJson(json['inventory'] as Map<String, dynamic>),
      variationValues: json['variationValues'] == null
          ? null
          : VariationValues.fromJson(
              json['variationValues'] as Map<String, dynamic>),
      variationAttributes: (json['variationAttributes'] as List<dynamic>?)
          ?.map((e) =>
              ProductVariationAttribute.fromJson(e as Map<String, dynamic>))
          .toList(),
      variants: (json['variants'] as List<dynamic>?)
          ?.map((e) => Variant.fromJson(e as Map<String, dynamic>))
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
      'inventory': instance.inventory,
      'variationValues': instance.variationValues,
      'variationAttributes': instance.variationAttributes,
      'variants': instance.variants,
    };

_$VariantImpl _$$VariantImplFromJson(Map<String, dynamic> json) =>
    _$VariantImpl(
      orderable: json['orderable'] as bool,
      price: (json['price'] as num).toInt(),
      productId: json['productId'] as String,
      variationValues: VariationValues.fromJson(
          json['variationValues'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VariantImplToJson(_$VariantImpl instance) =>
    <String, dynamic>{
      'orderable': instance.orderable,
      'price': instance.price,
      'productId': instance.productId,
      'variationValues': instance.variationValues,
    };

_$VariationValuesImpl _$$VariationValuesImplFromJson(
        Map<String, dynamic> json) =>
    _$VariationValuesImpl(
      color: json['color'] as String,
      size: json['size'] as String,
    );

Map<String, dynamic> _$$VariationValuesImplToJson(
        _$VariationValuesImpl instance) =>
    <String, dynamic>{
      'color': instance.color,
      'size': instance.size,
    };

_$InventoryImpl _$$InventoryImplFromJson(Map<String, dynamic> json) =>
    _$InventoryImpl(
      ats: (json['ats'] as num).toInt(),
      backorderable: json['backorderable'] as bool,
      id: json['id'] as String,
      orderable: json['orderable'] as bool,
      preorderable: json['preorderable'] as bool,
      stockLevel: (json['stockLevel'] as num).toInt(),
    );

Map<String, dynamic> _$$InventoryImplToJson(_$InventoryImpl instance) =>
    <String, dynamic>{
      'ats': instance.ats,
      'backorderable': instance.backorderable,
      'id': instance.id,
      'orderable': instance.orderable,
      'preorderable': instance.preorderable,
      'stockLevel': instance.stockLevel,
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
