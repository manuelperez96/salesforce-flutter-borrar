import 'package:freezed_annotation/freezed_annotation.dart';

part 'variant_info.freezed.dart';

/// {@template variant_info}
/// Represents the variant information of a product.
/// 
/// This class includes various fields that describe the variant information, 
/// including color, size, variation attributes, and a list of variants.
/// 
/// - `color`: The color of the variant (optional).
/// - `size`: The size of the variant (optional).
/// - `variationAttributes`: A list of variation attributes associated 
/// with the variant.
/// - `variants`: A list of variants.
/// {@endtemplate}
@freezed
class VariantInfo with _$VariantInfo {
  /// {@macro variant_info}
  factory VariantInfo({
    required List<VariationAttributes> variationAttributes,
    required List<Variant> variants,
    String? color,
    String? size,
  }) = _VariantInfo;
}

/// {@template variant}
/// Represents a variant of a product.
/// 
/// This class includes various fields that describe the variant, including
/// its ID, price, color, and size.
/// 
/// - `id`: The unique identifier of the variant.
/// - `price`: The price of the variant.
/// - `color`: The color of the variant (optional).
/// - `size`: The size of the variant (optional).
/// {@endtemplate}
@freezed
class Variant with _$Variant {
  /// {@macro variant}
  factory Variant({
    required String id,
    required double price,
    String? color,
    String? size,
  }) = _Variant;

  /// Creates an instance of [Variant] from a JSON object.
  factory Variant.fromJson(Map<String, dynamic> json) {
    final variantValues = json['variationValues'] as Map<String, dynamic>;

    return Variant(
      id: json['productId'] as String,
      price: (json['price'] as num).toDouble(),
      color: variantValues['color'] as String?,
      size: variantValues['size'] as String?,
    );
  }
}

/// {@template variation_attributes}
/// Represents the variation attributes of a product.
/// 
/// This class includes various fields that describe the variation attributes, 
/// including its ID, name, and a list of value keys.
/// 
/// - `id`: The unique identifier of the variation attribute.
/// - `name`: The name of the variation attribute.
/// - `valueKeys`: A list of value keys associated with the variation attribute.
/// {@endtemplate}
@freezed
class VariationAttributes with _$VariationAttributes {
  /// {@macro variation_attributes}
  factory VariationAttributes({
    required String id,
    required String name,
    required List<ValueKey> valueKeys,
  }) = _VariationAttributes;

  /// Creates an instance of [VariationAttributes] from a JSON object.
  factory VariationAttributes.fromJson(Map<String, dynamic> json) {
    return VariationAttributes(
      id: json['id'] as String,
      name: json['name'] as String,
      valueKeys: (json['values'] as List).cast<Map<String, dynamic>>().map(
        (valueJson) {
          return ValueKey(
            name: valueJson['name'] as String,
            value: valueJson['value'] as String,
          );
        },
      ).toList(),
    );
  }
}

/// {@template value_key}
/// Represents a value key for a variation attribute.
/// 
/// This class includes various fields that describe the value key, including
/// its name and value.
/// 
/// - `name`: The name of the value key.
/// - `value`: The value of the value key.
/// {@endtemplate}
@freezed
class ValueKey with _$ValueKey {
  /// {@macro value_key}
  factory ValueKey({
    required String name,
    required String value,
  }) = _ValueKey;
}
