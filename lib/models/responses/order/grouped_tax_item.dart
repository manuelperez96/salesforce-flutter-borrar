import 'package:freezed_annotation/freezed_annotation.dart';

part 'grouped_tax_item.freezed.dart';
part 'grouped_tax_item.g.dart';

@freezed
class GroupedTaxItem with _$GroupedTaxItem {
  factory GroupedTaxItem({
    required String type,
    required double taxRate,
    required double taxValue,
  }) = _GroupedTaxItem;

  factory GroupedTaxItem.fromJson(Map<String, dynamic> json) =>
      _$GroupedTaxItemFromJson(json);
}
