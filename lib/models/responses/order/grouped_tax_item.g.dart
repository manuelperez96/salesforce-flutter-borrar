// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grouped_tax_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GroupedTaxItemImpl _$$GroupedTaxItemImplFromJson(Map<String, dynamic> json) =>
    _$GroupedTaxItemImpl(
      type: json['type'] as String,
      taxRate: (json['taxRate'] as num).toDouble(),
      taxValue: (json['taxValue'] as num).toDouble(),
    );

Map<String, dynamic> _$$GroupedTaxItemImplToJson(
        _$GroupedTaxItemImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'taxRate': instance.taxRate,
      'taxValue': instance.taxValue,
    };
