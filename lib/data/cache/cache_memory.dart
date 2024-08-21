import 'package:sf_commerce_sdk/models/responses/category/category.dart';
import 'package:sf_commerce_sdk/models/responses/product/product.dart';
import 'package:sf_commerce_sdk/models/responses/product/product_by_category.dart';

class MemoryCache {
  // Singleton class
  static final MemoryCache _memoryCache = MemoryCache._internal();

  factory MemoryCache() {
    return _memoryCache;
  }

  MemoryCache._internal() {
    // Empty constructor
  }

  // Cache data
  Map<String, List<Category>> categoriesByUrl = {};
  Map<String, Product> productById = {};
  Map<String, List<ProductByCategory>> productCategoryByUrl = {};

  clearAll() {
    // Clear all data
    categoriesByUrl = {};
    productById = {};
    productCategoryByUrl = {};
  }
}
