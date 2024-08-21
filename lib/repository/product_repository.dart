import 'package:dio/dio.dart';
import 'package:sf_commerce_sdk/models/responses/product/product.dart';
import 'package:sf_commerce_sdk/models/responses/product/product_by_category.dart';
import 'package:sf_commerce_sdk/repository/repository.dart';

class ProductRepository extends Repository {
  ProductRepository({required super.dio, required super.config});

  Future<List<Product>> getProducts(List<String> ids) async {
    try {
      final response = await dio.get(
          '${config.host}/product/shopper-products/v1/organizations/${config.organizationId}/products?ids=${ids.join(',')}&siteId=${config.siteId}',
          options: Options(
            headers: {'Content-Type': 'application/json'},
          ));

      final List<dynamic> jsonResponse = response.data['data'];

      return jsonResponse.map((json) => Product.fromJson(json)).toList();
    } catch (e) {
      throw Exception('Failed to load products: $e');
    }
  }

  Future<Product> getProduct(String id) async {
    try {
      final response = await dio.get(
          '${config.host}/product/shopper-products/v1/organizations/${config.organizationId}/products/$id?siteId=${config.siteId}',
          options: Options(
            headers: {'Content-Type': 'application/json'},
          ));
      final dynamic jsonResponse = response.data;
      return Product.fromJson(jsonResponse);
    } catch (e) {
      throw Exception('Failed to load product: $e');
    }
  }

  Future<List<ProductByCategory>> getProductByCategory(String category) async {
    try {
      final response = await dio.get(
          '${config.host}/search/shopper-search/v1/organizations/${config.organizationId}/product-search?refine=cgid=$category&siteId=${config.siteId}',
          options: Options(
            headers: {'Content-Type': 'application/json'},
          ));
      final dynamic jsonResponse = response.data['hits'];
      if (jsonResponse != null) {
        return jsonResponse
            .map<ProductByCategory>((json) => ProductByCategory.fromJson(json))
            .toList();
      } else {
        return [];
      }
    } catch (e) {
      throw Exception('Failed to load product by category: $e');
    }
  }
}
