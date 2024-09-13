import 'package:freezed_annotation/freezed_annotation.dart';

part 'grouped_tax_item.freezed.dart';
part 'grouped_tax_item.g.dart';

/// {@template grouped_tax_item}
/// Represents a grouped tax item in a basket or order.
/// 
/// This class includes various fields that describe the grouped tax item, 
/// including
/// its type, tax rate, and tax value.
/// 
/// - `type`: The type of the tax.
/// - `taxRate`: The rate of the tax.
/// - `taxValue`: The value of the tax.
/// {@endtemplate}
@freezed
class GroupedTaxItem with _$GroupedTaxItem {
  /// {@macro grouped_tax_item}
  factory GroupedTaxItem({
    required String type,
    required double taxRate,
    required double taxValue,
  }) = _GroupedTaxItem;

  /// Creates an instance of [GroupedTaxItem] from a JSON object.
  factory GroupedTaxItem.fromJson(Map<String, dynamic> json) =>
      _$GroupedTaxItemFromJson(json);
}
