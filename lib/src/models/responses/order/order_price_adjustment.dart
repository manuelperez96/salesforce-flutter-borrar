import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sf_commerce_sdk/src/models/responses/payment/applied_discount.dart';

part 'order_price_adjustment.freezed.dart';
part 'order_price_adjustment.g.dart';

@freezed
class OrderPriceAdjustment with _$OrderPriceAdjustment {
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

  factory OrderPriceAdjustment.fromJson(Map<String, dynamic> json) =>
      _$OrderPriceAdjustmentFromJson(json);
}
