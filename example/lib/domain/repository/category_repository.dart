import 'package:sf_commerce_sdk/sf_commerce_sdk.dart';

class CategoryRepository {
  CategoryRepository({required CategoryApi categoryApi})
      : _categoryApi = categoryApi;

  final CategoryApi _categoryApi;

  Future<List<Category>> getAllCategories() => _categoryApi.getAllCategories();

  Future<List<Category>> getRootCategories() {
    return _categoryApi.getRootCategories();
  }
}
