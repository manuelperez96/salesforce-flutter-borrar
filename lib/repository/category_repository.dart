import 'package:dio/dio.dart';
import 'package:sf_commerce_sdk/models/responses/category/category.dart';
import 'package:sf_commerce_sdk/repository/repository.dart';

class CategoryRepository extends Repository {
  late final String _pathRoot;
  late CategoryWrapper rootWrapper;

  CategoryRepository({required super.dio, required super.config}) {
    _pathRoot =
        '${config.host}/product/shopper-products/v1/organizations/${config.organizationId}/categories?ids=root&siteId=${config.siteId}';
    rootWrapper = CategoryWrapper(
        category: Category(
            id: 'root',
            name: 'root',
            onlineSubCategoriesCount: 0,
            parentCategoryId: ''));
  }

  void loadCategories() async {
    List<Category> firstChildren = await getCategoriesByFather(_pathRoot);
    rootWrapper.children = List.empty(growable: true);
    for (var element in firstChildren) {
      rootWrapper.children.add(await buildCategoryWrapper(element));
    }
  }

  Future<CategoryWrapper> buildCategoryWrapper(Category category) async {
    CategoryWrapper result = CategoryWrapper(category: category, children: []);
    if (category.onlineSubCategoriesCount > 0) {
      List<Category> categoryChildren = await getCategoriesByFather(
          '${config.host}/product/shopper-products/v1/organizations/${config.organizationId}/categories?ids=${category.id}&siteId=${config.siteId}');
      for (var element in categoryChildren) {
        result.children.add(await buildCategoryWrapper(element));
      }
    }
    return result;
  }

  Future<List<Category>> getCategoriesByFather(String url) async {
    try {
      print(url);
      final response = await dio.get(url,
          options: Options(
            headers: {'Content-Type': 'application/json'},
          ));
      final List<dynamic> jsonResponse = response.data['data'][0]['categories'];

      return jsonResponse
          .map((categoryJson) => Category.fromJson(categoryJson))
          .toList();
    } catch (e) {
      throw Exception('Failed to load categories: $e');
    }
  }
}

class CategoryWrapper {
  Category category;
  List<CategoryWrapper> children;

  CategoryWrapper({required this.category, this.children = const []});
}
