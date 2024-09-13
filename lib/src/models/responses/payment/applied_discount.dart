import 'package:freezed_annotation/freezed_annotation.dart';

part 'applied_discount.freezed.dart';
part 'applied_discount.g.dart';

/// {@template applied_discount}
/// Represents a discount applied to an order or item.
/// 
/// This class includes various fields that describe the applied discount, including
/// its amount and type.
/// 
/// - `amount`: The amount of the discount.
/// - `type`: The type of the discount.
/// {@endtemplate}
@freezed
class AppliedDiscount with _$AppliedDiscount {
  /// {@macro applied_discount}
  factory AppliedDiscount({
    required int amount,
    required String type,
  }) = _AppliedDiscount;

  /// Creates an instance of [AppliedDiscount] from a JSON object.
  factory AppliedDiscount.fromJson(Map<String, dynamic> json) =>
      _$AppliedDiscountFromJson(json);
}
