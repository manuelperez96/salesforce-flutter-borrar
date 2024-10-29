import 'package:sf_commerce_sdk/sf_commerce_sdk.dart';

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

  Future<List<ProductPreviewByCategory>> getProductByCriteria(String criteria) {
    return _productApi.getProductByCriteria(criteria);
  }
}
