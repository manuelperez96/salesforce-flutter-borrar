import 'package:dio/dio.dart';
import 'package:sf_commerce_sdk/models/exception/product_exception.dart';
import 'package:sf_commerce_sdk/models/responses/product/product.dart';
import 'package:sf_commerce_sdk/models/responses/product/product_preview_by_category.dart';
import 'package:sf_commerce_sdk/repository/repository.dart';

class ProductRepository extends Repository {
  const ProductRepository({
    required super.dio,
    required super.config,
  });

  Future<List<Product>> getProducts(List<String> ids) async {
    try {
      final response = await dio.get<dynamic>(
        '${config.host}/product/shopper-products/v1/organizations/${config.organizationId}/products?ids=${ids.join(',')}&siteId=${config.siteId}',
        options: Options(
          headers: {'Content-Type': 'application/json'},
        ),
      );

      final jsonResponse = (response.data as Map)['data'] as List;

      return jsonResponse
          .map((json) => Product.fromJson(json as Map<String, dynamic>))
          .toList();
    } catch (e) {
      throw UnableToGetProductException(e);
    }
  }

  Future<Product> getProduct(String id) async {
    try {
      final response = await dio.get<dynamic>(
        '${config.host}/product/shopper-products/v1/organizations/${config.organizationId}/products/$id?siteId=${config.siteId}&allImages=true',
        options: Options(
          headers: {'Content-Type': 'application/json'},
        ),
      );
      final dynamic jsonResponse = response.data;

      final result = Product.fromJson(jsonResponse as Map<String, dynamic>);

      return result;
    } catch (e) {
      throw UnableToGetProductException(e);
    }
  }

  Future<List<ProductPreviewByCategory>> getProductByCategory(
    String category,
  ) async {
    try {
      final response = await dio.get<Map<String, dynamic>>(
        '${config.host}/search/shopper-search/v1/organizations/${config.organizationId}/product-search?refine=cgid=$category&siteId=${config.siteId}',
      );
      if (response.data == null) return [];

      return ((response.data! as Map)['hits'] as List?)
              ?.cast<Map<String, dynamic>>()
              .map(
                (json) => _toProductPreview(categoryId: category, json: json),
              )
              .toList() ??
          [];
    } catch (e) {
      throw UnableToGetProductException(e);
    }
  }

  ProductPreviewByCategory _toProductPreview({
    required String categoryId,
    required Map<String, dynamic> json,
  }) {
    return ProductPreviewByCategory.fromJson(
      categoryId: categoryId,
      json: json,
    );
  }
}
