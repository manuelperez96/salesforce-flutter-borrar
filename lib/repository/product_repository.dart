import 'package:dio/dio.dart';
import 'package:sf_commerce_sdk/data/cache/cache_memory.dart';
import 'package:sf_commerce_sdk/models/responses/product/product.dart';
import 'package:sf_commerce_sdk/models/responses/product/product_by_category.dart';
import 'package:sf_commerce_sdk/repository/repository.dart';

class ProductRepository extends Repository {
  final MemoryCache<Product> memoryCache = MemoryCache<Product>();

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
      //check is data is in cache
      if (memoryCache.hasKey(id)) {
        return memoryCache.getValue(id);
      }

      final response = await dio.get(
          '${config.host}/product/shopper-products/v1/organizations/${config.organizationId}/products/$id?siteId=${config.siteId}',
          options: Options(
            headers: {'Content-Type': 'application/json'},
          ));
      final dynamic jsonResponse = response.data;

      final result = Product.fromJson(jsonResponse);
      memoryCache.addValue(id, result);
      return result;
    } catch (e) {
      throw Exception('Failed to load product: $e');
    }
  }

  Future<List<ProductByCategory>> getProductByCategory(String category) async {
    try {
      //check is data is in cache
      // if (memoryCache.productCategoryByUrl.containsKey(category)) {
      //   return memoryCache.productCategoryByUrl[category]!;
      // }

      final response = await dio.get(
          '${config.host}/search/shopper-search/v1/organizations/${config.organizationId}/product-search?refine=cgid=$category&siteId=${config.siteId}',
          options: Options(
            headers: {'Content-Type': 'application/json'},
          ));
      final dynamic jsonResponse = response.data['hits'];
      List<ProductByCategory> result;
      if (jsonResponse != null) {
        result = jsonResponse
            .map<ProductByCategory>((json) => ProductByCategory.fromJson(json))
            .toList();
      } else {
        result = [];
      }
      //memoryCache.productCategoryByUrl[category] = result;
      return result;
    } catch (e) {
      throw Exception('Failed to load product by category: $e');
    }
  }

  void clearCache() {
    memoryCache.clearAll();
  }
}
