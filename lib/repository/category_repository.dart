import 'package:dio/dio.dart';
import 'package:sf_commerce_sdk/data/cache/cache_memory.dart';
import 'package:sf_commerce_sdk/models/responses/category/category.dart';
import 'package:sf_commerce_sdk/repository/repository.dart';

class CategoryRepository extends Repository {
  const CategoryRepository({
    required super.dio,
    required super.config,
    required this.memoryCache,
  });

  final MemoryCache<List<Category>> memoryCache;

  Future<List<Category>> getAllCategories() => _getSubcategoriesWithDeep(
        'root',
        deepLevel: 2,
      );

  Future<List<Category>> getRootCategories() => getSubcategories('root');

  Future<List<Category>> getSubcategories(String categoryName) =>
      _getSubcategoriesWithDeep(categoryName);

  Future<List<Category>> _getSubcategoriesWithDeep(
    String categoryName, {
    int deepLevel = 1,
  }) async {
    assert(
      deepLevel >= 0 && deepLevel <= 2,
      'deepLevel can not be smaller than 0 or bigger than 2',
    );
    assert(
      categoryName.isNotEmpty,
      'categoryName can not be empty',
    );

    final uri = _buildCategoryUrl(categoryName, deepLevel);
    try {
      final cachedValue = memoryCache.getValue(uri.toString());
      if (cachedValue != null) return cachedValue;

      final response = await dio.get<Map<String, dynamic>>(uri.toString());
      final categories = _getCategoriesMap(response)
          .map((e) => Category.fromJson(json: e))
          .toList();

      memoryCache.addValue(uri.toString(), [...categories]);

      return categories;
    } catch (e) {
      throw Exception('Failed to load categories: $e');
    }
  }

  void clearCache() {
    memoryCache.clearAll();
  }

  Uri _buildCategoryUrl(String category, int deepLevel) => Uri.parse(
        '${config.host}/product/shopper-products/v1/organizations/${config.organizationId}/categories/$category?levels=$deepLevel&siteId=${config.siteId}',
      );

  List<Map<String, dynamic>> _getCategoriesMap(
    Response<Map<String, dynamic>> response,
  ) {
    return (response.data!['categories'] as List).cast<Map<String, dynamic>>();
  }
}
