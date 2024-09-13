import 'package:dio/dio.dart';
import 'package:sf_commerce_sdk/src/api/api.dart';
import 'package:sf_commerce_sdk/src/models/exception/category_exception.dart';
import 'package:sf_commerce_sdk/src/models/responses/category/category.dart';

class CategoryApi extends Api {
  const CategoryApi({
    required super.dio,
    required super.config,
  });

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
      final response = await dio.get<Map<String, dynamic>>(uri.toString());
      final categories = _getCategoriesMap(response)
          .map((e) => Category.fromJson(json: e))
          .toList();

      return categories;
    } catch (e) {
      throw GetCategoriesException(e);
    }
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
