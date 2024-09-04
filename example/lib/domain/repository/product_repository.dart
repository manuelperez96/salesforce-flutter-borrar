import 'package:sf_commerce_sdk/api/product_api.dart';
import 'package:sf_commerce_sdk/models/responses/product/product.dart';
import 'package:sf_commerce_sdk/models/responses/product/product_preview_by_category.dart';

class ProductRepository {
  ProductRepository({required ProductApi productApi})
      : _productApi = productApi;

  final ProductApi _productApi;

  Future<List<ProductPreviewByCategory>> getProductByCategory(String category) {
    return _productApi.getProductByCategory(category);
  }

  Future<Product> getProduct(String id) {
    return _productApi.getProduct(id);
  }
}
