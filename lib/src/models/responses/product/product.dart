import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sf_commerce_sdk/src/models/responses/product/image.dart';
import 'package:sf_commerce_sdk/src/models/responses/product/product_type.dart';
import 'package:sf_commerce_sdk/src/models/responses/product/variant_info.dart';

export 'image.dart';
export 'product_preview_by_category.dart';
export 'product_type.dart';
export 'variant_info.dart';

part 'product.freezed.dart';

@freezed
class Product with _$Product {
  factory Product({
    required String id,
    required String currency,
    required List<ImageBundle> images,

    /// The number of item in stock that are available to sell.
    required int availableStock,

    /// The real number of items in stock.
    required int stock,
    required int minOrderQuantity,
    required String name,
    required double price,
    required double pricePerUnit,
    required String slugUrl,
    required Set<ProductType> productTypes,
    required String? shortDescription,
    required String? longDescription,
    required String? category,
    String? brand,
    VariantInfo? variantInfo,
  }) = _Product;

  const Product._();

  factory Product.fromJson(Map<String, dynamic> json) {
    final images = _getImages(json);
    final inventory = json['inventory'] as Map<String, dynamic>;
    final availableStock = (inventory['ats'] as num).toInt();
    final stock = (inventory['stockLevel'] as num).toInt();
    final productTypes = ProductType.fromJson(
      json['type'] as Map<String, dynamic>,
    );

    return Product(
      id: json['id'] as String,
      brand: json['brand'] as String?,
      currency: json['currency'] as String,
      images: images,
      availableStock: availableStock,
      stock: stock,
      category: json['primaryCategoryId'] as String?,
      longDescription: json['longDescription'] as String?,
      minOrderQuantity: (json['minOrderQuantity'] as num).toInt(),
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      pricePerUnit: (json['pricePerUnit'] as num).toDouble(),
      productTypes: productTypes,
      shortDescription: json['shortDescription'] as String?,
      slugUrl: json['slugUrl'] as String,
      variantInfo: _getVariant(json),
    );
  }

 bool get hasVariants => variantInfo != null;

  List<Image> get representativeImage => images.first.images;
  List<String> get representativeUrlImages =>
      representativeImage.map((e) => e.link).toList();

  static List<ImageBundle> _getImages(Map<String, dynamic> json) {
    return (json['imageGroups'] as List)
        .cast<Map<String, dynamic>>()
        .map(ImageBundle.fromJson)
        .toList();
  }

  static VariantInfo? _getVariant(Map<String, dynamic> json) {
    final variants = (json['variants'] as List?)?.cast<Map<String, dynamic>>();
    if (variants == null) return null;
    final variationAttributes = (json['variationAttributes'] as List)
        .cast<Map<String, dynamic>>()
        .map(VariationAttributes.fromJson)
        .toList();
    final variationValues = json['variationValues'] as Map<String, dynamic>;

    return VariantInfo(
      color: variationValues['color'] as String?,
      size: variationValues['size'] as String?,
      variationAttributes: variationAttributes,
      variants: variants.map(Variant.fromJson).toList(),
    );
  }

  // static List<String> getImagesByColor({
  //   required String selectedColor,
  //   required List<ImageGroup> imageGroups,
  //   String viewType = 'medium',
  // }) {
  //   final imageLinks = <String>[];

  //   final filteredImageGroups =
  //       imageGroups.where((imageGroup) => imageGroup.viewType == viewType);

  //   for (final imageGroup in filteredImageGroups) {
  //     for (final image in imageGroup.images) {
  //       if (image.link.contains(selectedColor)) {
  //         imageLinks.add(image.link);
  //       }
  //     }
  //   }

  //   return imageLinks;
  // }

  // static List<Variant> getVariantsByColor(
  //   String selectedColor,
  //   List<Variant> variants,
  // ) {
  //   return variants.where((variant) {
  //     return variant.variationValues.color == selectedColor;
  //   }).toList();
  // }

  // static List<String> getAvailableSizesForColor(
  //   String selectedColor,
  //   List<Variant> variants,
  // ) {
  //   final filteredVariants = getVariantsByColor(selectedColor, variants);

  //   final availableValuesSizes = filteredVariants
  //       .where((variant) => variant.orderable)
  //       .map((variant) => variant.variationValues.size!)
  //       .toList();

  //   return availableValuesSizes;
  // }
}
