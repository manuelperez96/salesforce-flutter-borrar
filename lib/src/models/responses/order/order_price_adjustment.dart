import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sf_commerce_sdk/sf_commerce_sdk.dart';

part 'order_price_adjustment.freezed.dart';
part 'order_price_adjustment.g.dart';

/// {@template order_price_adjustment}
/// Represents a price adjustment applied to an order.
/// 
/// This class includes various fields that describe the price adjustment, 
/// including the applied discount, reason code, creator, creation date, 
/// and other attributes.
/// 
/// - `appliedDiscount`: The discount applied to the order.
/// - `reasonCode`: The reason code for the price adjustment.
/// - `createdBy`: The identifier of the user who created the price adjustment.
/// - `creationDate`: The date when the price adjustment was created.
/// - `custom`: Indicates if the price adjustment is custom.
/// - `lastModified`: The date when the price adjustment was last modified.
/// - `manual`: Indicates if the price adjustment was applied manually.
/// - `price`: The amount of the price adjustment.
/// - `priceAdjustmentId`: The unique identifier of the price adjustment.
/// - `promotionId`: The identifier of the promotion associated with the 
/// price adjustment.
/// {@endtemplate}
@freezed
class OrderPriceAdjustment with _$OrderPriceAdjustment {
  /// {@macro order_price_adjustment}
  factory OrderPriceAdjustment({
    required AppliedDiscount appliedDiscount,
    required String reasonCode,
    required String createdBy,
    required DateTime creationDate,
    required bool custom,
    required DateTime lastModified,
    required bool manual,
    required int price,
    required String priceAdjustmentId,
    required String promotionId,
  }) = _OrderPriceAdjustment;

  /// Creates an instance of [OrderPriceAdjustment] from a JSON object.
  factory OrderPriceAdjustment.fromJson(Map<String, dynamic> json) =>
      _$OrderPriceAdjustmentFromJson(json);
}
