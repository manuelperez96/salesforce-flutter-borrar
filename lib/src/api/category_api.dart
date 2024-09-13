import 'package:dio/dio.dart';
import 'package:sf_commerce_sdk/sf_commerce_sdk.dart';

/// {@template category_api}
/// A class that handles category-related API interactions within
/// the SF Commerce SDK.
///
/// This class provides methods for retrieving all categories, root categories,
/// and subcategories with specified depth levels.
///
/// - `dio`: The Dio instance used for making HTTP requests.
/// - `config`: The configuration details required for the API interactions.
/// {@endtemplate}
class CategoryApi extends Api {
  /// {@macro category_api}
  const CategoryApi({
    required super.dio,
    required super.config,
  });

  /// Retrieves all categories.
  Future<List<Category>> getAllCategories() => _getSubcategoriesWithDeep(
        'root',
        deepLevel: 2,
      );

  /// Retrieves the root categories.
  Future<List<Category>> getRootCategories() => getSubcategories('root');

  /// Retrieves the subcategories of a specified category.
  ///
  /// - `categoryName`: The name of the category whose subcategories are to 
  /// be retrieved.
  Future<List<Category>> getSubcategories(String categoryName) =>
      _getSubcategoriesWithDeep(categoryName);

  /// Retrieves the subcategories of a specified category with a specified 
  /// depth level.
  ///
  /// - `categoryName`: The name of the category whose subcategories 
  /// are to be retrieved.
  /// - `deepLevel`: The depth level of subcategories to be retrieved 
  /// (default is 1).
  ///
  /// Throws [GetCategoriesException] if the retrieval fails.
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

  /// Builds the URL for retrieving categories.
  ///
  /// - `category`: The name of the category.
  /// - `deepLevel`: The depth level of subcategories to be retrieved.
  Uri _buildCategoryUrl(String category, int deepLevel) => Uri.parse(
        '${config.host}/product/shopper-products/v1/organizations/${config.organizationId}/categories/$category?levels=$deepLevel&siteId=${config.siteId}',
      );

  /// Extracts the categories from the response.
  ///
  /// - `response`: The response from the API call.
  List<Map<String, dynamic>> _getCategoriesMap(
    Response<Map<String, dynamic>> response,
  ) {
    return (response.data!['categories'] as List).cast<Map<String, dynamic>>();
  }
}
