import 'package:dio/dio.dart';
import 'package:sf_commerce_sdk/data/cache/cache_memory.dart';
import 'package:sf_commerce_sdk/models/exception/product_exception.dart';
import 'package:sf_commerce_sdk/models/responses/product/product.dart';
import 'package:sf_commerce_sdk/models/responses/product/product_by_category.dart';
import 'package:sf_commerce_sdk/repository/repository.dart';

class ProductRepository extends Repository {
  const ProductRepository({
    required super.dio,
    required super.config,
    required this.memoryCache,
  });

  final MemoryCache<Product> memoryCache;

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
      if (memoryCache.hasKey(id)) {
        return memoryCache.getValue(id)!;
      }

      final response = await dio.get<dynamic>(
        '${config.host}/product/shopper-products/v1/organizations/${config.organizationId}/products/$id?siteId=${config.siteId}',
        options: Options(
          headers: {'Content-Type': 'application/json'},
        ),
      );
      final dynamic jsonResponse = response.data;

      final result = Product.fromJson(jsonResponse as Map<String, dynamic>);
      memoryCache.addValue(id, result);
      return result;
    } catch (e) {
      throw UnableToGetProductException(e);
    }
  }

  // TODO(Carlos): change ProductByCategory by Product + cache manager
  Future<List<ProductByCategory>> getProductByCategory(String category) async {
    try {
      final response = await dio.get<dynamic>(
        '${config.host}/search/shopper-search/v1/organizations/${config.organizationId}/product-search?refine=cgid=$category&siteId=${config.siteId}',
        options: Options(
          headers: {'Content-Type': 'application/json'},
        ),
      );
      final jsonResponse = (response.data as Map)['hits'] as List?;

      if (jsonResponse != null) {
        return jsonResponse
            .map<ProductByCategory>(
              (json) =>
                  ProductByCategory.fromJson(json as Map<String, dynamic>),
            )
            .toList();
      } else {
        return [];
      }
    } catch (e) {
      throw UnableToGetProductException(e);
    }
  }

  void clearCache() {
    memoryCache.clearAll();
  }
}
