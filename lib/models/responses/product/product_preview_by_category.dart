import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sf_commerce_sdk/models/responses/product/image.dart';
import 'package:sf_commerce_sdk/models/responses/product/product_type.dart';

part 'product_preview_by_category.freezed.dart';

@freezed
class ProductPreviewByCategory with _$ProductPreviewByCategory {
  factory ProductPreviewByCategory({
    required String id,
    required String productName,
    required Image image,
    required double price,
    required String currency,
    required String categoryId,
    required Set<ProductType> types,
  }) = _ProductPreviewByCategory;

  factory ProductPreviewByCategory.fromJson({
    required String categoryId,
    required Map<String, dynamic> json,
  }) {
    final image = Image.fromJson(json['image'] as Map<String, dynamic>);
    final productId = (json['representedProduct'] as Map)['id'] as String;
    final productType = (json['productType'] as List<dynamic>)
        .cast<String>()
        .map(ProductType.fromValue)
        .toSet();

    return ProductPreviewByCategory(
      id: productId,
      productName: json['productName'] as String,
      image: image,
      price: (json['price'] as num).toDouble(),
      currency: json['currency'] as String,
      categoryId: categoryId,
      types: productType,
    );
  }
}
