import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sf_commerce_sdk/models/responses/product/image.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  factory Product({
    required String id,
    required String currency,
    required List<ImageGroup> imageGroups,
    required String name,
    required String pageDescription,
    required String pageTitle,
    required double price,
    required int pricePerUnit,
    required String shortDescription,
    required int? minOrderQuantity,
    // required String slugUrl,
    // required int stepQuantity,
    // required String unitMeasure,
    // required int unitQuantity,
    // required String upc,
    // required List<Variant> variants,
    required List<ProductVariationAttribute>? variationAttributes,
    // required VariationValues variationValues,
    // @JsonKey(name: 'c_color') required String cColor,
    // @JsonKey(name: 'c_IsNew') required String cIsNew,
    // @JsonKey(name: 'c_IsNewtest') required String cIsNewtest,
    // @JsonKey(name: 'c_RefinementColor') required String cRefinementColor,
    // @JsonKey(name: 'c_Size') required String cSize,
    // @JsonKey(name: 'c_Width') required String cWidth,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
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
