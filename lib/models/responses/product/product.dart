import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sf_commerce_sdk/models/responses/product/image.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  factory Product({
    required String id,
    required String currency,
    required String name,
    required String pageDescription,
    required String pageTitle,
    required double price,
    required double pricePerUnit,
    required String shortDescription,
    required int? minOrderQuantity,
    required Inventory inventory,
    required List<ImageGroup> imageGroups,

    /// Values of this product (color, size)
    required VariationValues? variationValues,
    required List<ProductVariationAttribute>? variationAttributes,
    required List<Variant>? variants,
  }) = _Product;

  const Product._();

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  static List<String> getImagesByColor({
    required String selectedColor,
    required List<ImageGroup> imageGroups,
    String viewType = 'medium',
  }) {
    final imageLinks = <String>[];

    final filteredImageGroups =
        imageGroups.where((imageGroup) => imageGroup.viewType == viewType);

    for (final imageGroup in filteredImageGroups) {
      for (final image in imageGroup.images) {
        if (image.link.contains(selectedColor)) {
          imageLinks.add(image.link);
        }
      }
    }

    return imageLinks;
  }

  static List<Variant> getVariantsByColor(
    String selectedColor,
    List<Variant> variants,
  ) {
    return variants.where((variant) {
      return variant.variationValues.color == selectedColor;
    }).toList();
  }

  static List<String> getAvailableSizesForColor(
    String selectedColor,
    List<Variant> variants,
  ) {
    final filteredVariants = getVariantsByColor(selectedColor, variants);

    final availableValuesSizes = filteredVariants
        .where((variant) => variant.orderable)
        .map((variant) => variant.variationValues.size!)
        .toList();

    return availableValuesSizes;
  }
}

@freezed
class Variant with _$Variant {
  factory Variant({
    required bool orderable,
    required int price,
    required String productId,
    required VariationValues variationValues,
  }) = _Variant;

  factory Variant.fromJson(Map<String, dynamic> json) =>
      _$VariantFromJson(json);
}

@freezed
class VariationValues with _$VariationValues {
  factory VariationValues({
    required String? color,
    required String? size,
  }) = _VariationValues;

  factory VariationValues.fromJson(Map<String, dynamic> json) =>
      _$VariationValuesFromJson(json);
}

@freezed
class Inventory with _$Inventory {
  factory Inventory({
    required int ats,
    required bool backorderable,
    required String id,
    required bool orderable,
    required bool preorderable,
    required int stockLevel,
  }) = _Inventory;

  factory Inventory.fromJson(Map<String, dynamic> json) =>
      _$InventoryFromJson(json);
}

@freezed
class ImageGroup with _$ImageGroup {
  factory ImageGroup({
    required List<Image> images,
    required String viewType,
  }) = _ImageGroup;

  factory ImageGroup.fromJson(Map<String, dynamic> json) =>
      _$ImageGroupFromJson(json);
}

@freezed
class ProductVariationAttribute with _$ProductVariationAttribute {
  factory ProductVariationAttribute({
    required String id,
    required String name,
    required List<ValuesVariation> values,
  }) = _ProductVariationAttribute;

  factory ProductVariationAttribute.fromJson(Map<String, dynamic> json) =>
      _$ProductVariationAttributeFromJson(json);
}

@freezed
class ValuesVariation with _$ValuesVariation {
  factory ValuesVariation({
    required String name,
    required bool orderable,
    required String value,
  }) = _ValuesVariation;

  factory ValuesVariation.fromJson(Map<String, dynamic> json) =>
      _$ValuesVariationFromJson(json);
}
