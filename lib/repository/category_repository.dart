import 'package:dio/dio.dart';
import 'package:sf_commerce_sdk/data/cache/cache_memory.dart';
import 'package:sf_commerce_sdk/models/responses/category/category.dart';
import 'package:sf_commerce_sdk/repository/repository.dart';

class CategoryRepository extends Repository {
  late final String _pathRoot;
  final MemoryCache memoryCache;

  CategoryRepository(
      {required super.dio, required super.config, required this.memoryCache}) {
    _pathRoot =
        '${config.host}/product/shopper-products/v1/organizations/${config.organizationId}/categories?ids=root&siteId=${config.siteId}';
  }

  Future<List<Category>> getRootCategories() async {
    return getCategoriesByUrl(_pathRoot);
  }

  Future<List<Category>> getCategoriesByUrl(String url) async {
    try {
      print('aaa pido categorias');
      //check is data is in cache
      if (memoryCache.categoriesByUrl.containsKey(url)) {
        print('aaa devuelvo cache');
        return memoryCache.categoriesByUrl[url]!;
      }

      final response = await dio.get(url,
          options: Options(
            headers: {'Content-Type': 'application/json'},
          ));
      final List<dynamic> jsonResponse = response.data['data'][0]['categories'];
      print('aaa devuelvo internet');

      List<Category> result = jsonResponse
          .map((categoryJson) => Category.fromJson(categoryJson))
          .toList();

      memoryCache.categoriesByUrl[url] = result;

      return result;
    } catch (e) {
      throw Exception('Failed to load categories: $e');
    }
  }
}
