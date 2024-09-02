import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  factory Product({
    required String id,
    required String currency,
    // required List<ImageGroup> imageGroups,
    required String name,
    required String pageDescription,
    required String pageTitle,
    required int price,
    required int pricePerUnit,
    required String shortDescription,
    // required String slugUrl,
    // required int stepQuantity,
    // required String unitMeasure,
    // required int unitQuantity,
    // required String upc,
    // required List<Variant> variants,
    // required List<ProductVariationAttribute> variationAttributes,
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
