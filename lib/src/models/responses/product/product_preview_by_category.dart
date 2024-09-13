import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sf_commerce_sdk/src/models/responses/product/image.dart';
import 'package:sf_commerce_sdk/src/models/responses/product/product_type.dart';

part 'product_preview_by_category.freezed.dart';

@freezed
class ProductPreviewByCategory with _$ProductPreviewByCategory {
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
