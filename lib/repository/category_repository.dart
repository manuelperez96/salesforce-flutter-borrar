import 'package:dio/dio.dart';
import 'package:sf_commerce_sdk/data/cache/cache_memory.dart';
import 'package:sf_commerce_sdk/models/responses/category/category.dart';
import 'package:sf_commerce_sdk/repository/repository.dart';

class CategoryRepository extends Repository {
  CategoryRepository({
    required super.dio,
    required super.config,
    required this.memoryCache,
  }) {
    _pathRoot =
        '${config.host}/product/shopper-products/v1/organizations/${config.organizationId}/categories?ids=root&siteId=${config.siteId}';
  }

  late final String _pathRoot;
  final MemoryCache<List<Category>> memoryCache;

  Future<List<Category>> getRootCategories() async {
    return getCategoriesByUrl(_pathRoot);
  }

  Future<List<Category>> getCategoriesByUrl(String url) async {
    try {
      if (memoryCache.hasKey(url)) {
        return memoryCache.getValue(url)!;
      }

      final response = await dio.get<dynamic>(
        url,
        options: Options(
          headers: {'Content-Type': 'application/json'},
        ),
      );

      final jsonResponse = (((response.data as Map)['data'] as List)[0]
          as Map<String, dynamic>)['categories'] as List;

      final result = jsonResponse
          .map(
            (categoryJson) =>
                Category.fromJson(categoryJson as Map<String, dynamic>),
          )
          .toList();

      memoryCache.addUpdateValue(url, result);

      return result;
    } catch (e) {
      throw Exception('Failed to load categories: $e');
    }
  }

  void clearCache() {
    memoryCache.clearAll();
  }
}
