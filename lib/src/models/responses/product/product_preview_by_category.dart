import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sf_commerce_sdk/sf_commerce_sdk.dart';

part 'product_preview_by_category.freezed.dart';

/// {@template product_preview_by_category}
/// Represents a preview of a product within a specific category.
/// 
/// This class includes various fields that describe the product preview, including
/// its ID, name, image, price, currency, category ID, product types, and orderable status.
/// 
/// - `id`: The unique identifier of the product.
/// - `representedId`: The ID of the represented product.
/// - `representedIdList`: A set of IDs representing the product.
/// - `productName`: The name of the product.
/// - `image`: The image associated with the product.
/// - `price`: The price of the product.
/// - `currency`: The currency of the product price.
/// - `categoryId`: The ID of the category the product belongs to.
/// - `types`: A set of product types.
/// - `orderable`: Indicates if the product is orderable.
/// {@endtemplate}
@freezed
class ProductPreviewByCategory with _$ProductPreviewByCategory {
  /// {@macro product_preview_by_category}
  factory ProductPreviewByCategory({
    required String id,
    required String representedId,
    required Set<String> representedIdList,
    required String productName,
    required Image image,
    required double price,
    required String currency,
    required String categoryId,
    required Set<ProductType> types,
    required bool orderable,
  }) = _ProductPreviewByCategory;

  /// Creates an instance of [ProductPreviewByCategory] from a JSON object.
  factory ProductPreviewByCategory.fromJson({
    required String categoryId,
    required Map<String, dynamic> json,
  }) {
    final image = Image.fromJson(json['image'] as Map<String, dynamic>);
    final productId = (json['representedProduct'] as Map)['id'] as String;
    final productType = ProductType.fromJson(
      json['productType'] as Map<String, dynamic>,
    );

    final representedId = (json['representedProduct'] as Map)['id'] as String;
    final representedIdList = (json['representedProducts'] as List)
        .cast<Map<String, dynamic>>()
        .map((e) => e['id'] as String)
        .toSet();

    return ProductPreviewByCategory(
      id: productId,
      productName: json['productName'] as String,
      image: image,
      price: (json['price'] as num).toDouble(),
      currency: json['currency'] as String,
      categoryId: categoryId,
      types: productType,
      orderable: json['orderable'] as bool,
      representedId: representedId,
      representedIdList: representedIdList,
    );
  }
}
