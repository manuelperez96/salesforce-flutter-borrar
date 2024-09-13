import 'package:freezed_annotation/freezed_annotation.dart';

part 'applied_discount.freezed.dart';
part 'applied_discount.g.dart';

@freezed
class AppliedDiscount with _$AppliedDiscount {
  factory AppliedDiscount({
    required int amount,
    required String type,
  }) = _AppliedDiscount;

  factory AppliedDiscount.fromJson(Map<String, dynamic> json) =>
      _$AppliedDiscountFromJson(json);
}
