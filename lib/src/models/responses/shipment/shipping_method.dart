import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipping_method.freezed.dart';
part 'shipping_method.g.dart';

/// {@template shipping_method}
/// Represents a shipping method available for a shipment.
/// 
/// This class includes various fields that describe the shipping method, including
/// its description, ID, name, and price.
/// 
/// - `description`: The description of the shipping method.
/// - `id`: The unique identifier of the shipping method.
/// - `name`: The name of the shipping method.
/// - `price`: The price of the shipping method.
/// {@endtemplate}
@freezed
class ShippingMethod with _$ShippingMethod {
  /// {@macro shipping_method}
  factory ShippingMethod({
    required String description,
    required String id,
    required String name,
    required double price,
  }) = _ShippingMethod;

  /// Creates an instance of [ShippingMethod] from a JSON object.
  factory ShippingMethod.fromJson(Map<String, dynamic> json) =>
      _$ShippingMethodFromJson(json);
}
