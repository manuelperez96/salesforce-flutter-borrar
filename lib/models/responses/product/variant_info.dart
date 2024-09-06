import 'package:freezed_annotation/freezed_annotation.dart';

part 'variant_info.freezed.dart';

@freezed
class VariantInfo with _$VariantInfo {
  factory VariantInfo({
    required String color,
    required String size,
    required List<VariationAttributes> variationAttributes,
    required List<Variant> variants,
  }) = _VariantInfo;
}

@freezed
class Variant with _$Variant {
  factory Variant({
    required String id,
    required double price,
    required String color,
    required String size,
  }) = _Variant;

  factory Variant.fromJson(Map<String, dynamic> json) {
    final variantValues = json['variationValues'] as Map<String, dynamic>;

    return Variant(
      id: json['productId'] as String,
      price: (json['price'] as num).toDouble(),
      color: variantValues['color'] as String,
      size: variantValues['size'] as String,
    );
  }
}

@freezed
class VariationAttributes with _$VariationAttributes {
  factory VariationAttributes({
    required String id,
    required String name,
    required List<ValueKey> valueKeys,
  }) = _VariationAttributes;

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

@freezed
class ValueKey with _$ValueKey {
  factory ValueKey({
    required String name,
    required String value,
  }) = _ValueKey;
}
