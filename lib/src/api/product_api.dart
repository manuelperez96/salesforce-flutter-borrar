import 'package:dio/dio.dart';
import 'package:sf_commerce_sdk/sf_commerce_sdk.dart';

/// {@template product_api}
/// A class that handles product-related API interactions within 
/// the SF Commerce SDK.
/// 
/// This class provides methods for retrieving products by their IDs, 
/// retrieving a single product,
/// and retrieving products by category.
/// 
/// - `dio`: The Dio instance used for making HTTP requests.
/// - `config`: The configuration details required for the API interactions.
/// {@endtemplate}
class ProductApi extends Api {
  /// {@macro product_api}
  const ProductApi({
    required super.dio,
    required super.config,
  });

  /// Retrieves a list of products by their IDs.
  ///
  /// - `ids`: A list of product IDs to retrieve.
  ///
  /// Throws [UnableToGetProductException] if the retrieval fails.
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
      throw UnableToGetProductException(StackTrace.current, e);
    }
  }

  /// Retrieves a single product by its ID.
  ///
  /// - `id`: The ID of the product to retrieve.
  ///
  /// Throws [UnableToGetProductException] if the retrieval fails.
  Future<Product> getProduct(String id) async {
    try {
      final response = await dio.get<dynamic>(
        '${config.host}/product/shopper-products/v1/organizations/${config.organizationId}/products/$id?siteId=${config.siteId}&allImages=true',
        options: Options(
          headers: {'Content-Type': 'application/json'},
        ),
      );

      final result = Product.fromJson(response.data as Map<String, dynamic>);

      return result;
    } catch (e) {
      throw UnableToGetProductException(StackTrace.current, e);
    }
  }

  /// Retrieves a list of products by category.
  ///
  /// - `category`: The category ID to retrieve products from.
  ///
  /// Throws [UnableToGetProductException] if the retrieval fails.
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
      throw UnableToGetProductException(StackTrace.current, e);
    }
  }

  /// Converts a JSON object to a [ProductPreviewByCategory] instance.
  ///
  /// - `categoryId`: The category ID associated with the product preview.
  /// - `json`: The JSON object to convert.
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
