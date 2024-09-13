import 'package:freezed_annotation/freezed_annotation.dart';

part 'coupon_item.freezed.dart';
part 'coupon_item.g.dart';

/// {@template coupon_item}
/// Represents a coupon item in a basket or order.
/// 
/// This class includes various fields that describe the coupon item, including
/// its code, ID, status, and validity.
/// 
/// - `code`: The code of the coupon.
/// - `couponItemId`: The unique identifier of the coupon item.
/// - `statusCode`: The status code of the coupon.
/// - `valid`: Indicates if the coupon is valid.
/// {@endtemplate}
@freezed
class CouponItem with _$CouponItem {
  /// {@macro coupon_item}
  factory CouponItem({
    required String code,
    required String couponItemId,
    required String statusCode,
    required bool valid,
  }) = _CouponItem;

  /// Creates an instance of [CouponItem] from a JSON object.
  factory CouponItem.fromJson(Map<String, dynamic> json) =>
      _$CouponItemFromJson(json);
}
