import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sf_commerce_sdk/sf_commerce_sdk.dart';

export 'image.dart';
export 'product_preview_by_category.dart';
export 'product_type.dart';
export 'variant_info.dart';

part 'product.freezed.dart';

/// {@template product}
/// Represents a product in the catalog.
/// 
/// This class includes various fields that describe the product, including
/// its ID, currency, images, stock information, name, price, descriptions, category,
/// brand, and variant information.
/// 
/// - `id`: The unique identifier of the product.
/// - `currency`: The currency used for the product price.
/// - `images`: A list of image bundles associated with the product.
/// - `availableStock`: The available stock of the product.
/// - `stock`: The total stock of the product.
/// - `minOrderQuantity`: The minimum order quantity for the product.
/// - `name`: The name of the product.
/// - `price`: The price of the product.
/// - `pricePerUnit`: The price per unit of the product.
/// - `slugUrl`: The slug URL of the product.
/// - `productTypes`: A set of product types associated with the product.
/// - `shortDescription`: A short description of the product.
/// - `longDescription`: A long description of the product.
/// - `category`: The category of the product.
/// - `brand`: The brand of the product (optional).
/// - `variantInfo`: The variant information of the product (optional).
/// {@endtemplate}
@freezed
class Product with _$Product {
  /// {@macro product}
  factory Product({
    required String id,
    required String currency,
    required List<ImageBundle> images,
    required int availableStock,
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

  /// Creates an instance of [Product] from a JSON object.
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

  /// Checks if the product has variants.
  bool get hasVariants => variantInfo != null;

  /// Gets the representative image of the product.
  List<Image> get representativeImage => images.first.images;

  /// Gets the URLs of the representative images of the product.
  List<String> get representativeUrlImages =>
      representativeImage.map((e) => e.link).toList();

  /// Extracts the list of image bundles from a JSON object.
  ///
  /// - `json`: The JSON object to extract images from.
  static List<ImageBundle> _getImages(Map<String, dynamic> json) {
    return (json['imageGroups'] as List)
        .cast<Map<String, dynamic>>()
        .map(ImageBundle.fromJson)
        .toList();
  }

  /// Extracts the variant information from a JSON object.
  ///
  /// - `json`: The JSON object to extract variant information from.
  ///
  /// Returns an instance of [VariantInfo] or `null` if no variant information is present.
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
}
