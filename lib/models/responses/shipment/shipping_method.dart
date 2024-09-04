import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipping_method.freezed.dart';
part 'shipping_method.g.dart';

@freezed
class ShippingMethod with _$ShippingMethod {
  factory ShippingMethod({
    required String description,
    required String id,
    required String name,
    required double price,
  }) = _ShippingMethod;

  factory ShippingMethod.fromJson(Map<String, dynamic> json) =>
      _$ShippingMethodFromJson(json);
}
