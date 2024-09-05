import 'package:sf_commerce_sdk/api/category_api.dart';
import 'package:sf_commerce_sdk/models/responses/category/category.dart';

class CategoryRepository {
  CategoryRepository({required CategoryApi categoryApi})
      : _categoryApi = categoryApi;

  final CategoryApi _categoryApi;

  Future<List<Category>> getRootCategories() {
    return _categoryApi.getRootCategories();
  }
}
