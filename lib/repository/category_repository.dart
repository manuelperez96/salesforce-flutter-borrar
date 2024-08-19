import 'package:dio/dio.dart';
import 'package:sf_commerce_sdk/models/responses/category/category.dart';
import 'package:sf_commerce_sdk/repository/repository.dart';

class CategoryRepository extends Repository {
  late final String _pathRoot;

  CategoryRepository({required super.dio, required super.config}) {
    _pathRoot =
        '${config.host}/product/shopper-products/v1/organizations/${config.organizationId}/categories?ids=root&siteId=${config.siteId}';
  }

  Future<List<Category>> getRootCategories() async {
    return getCategoriesByUrl(_pathRoot);
  }

  Future<List<Category>> getCategoriesByUrl(String url) async {
    try {
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
