import 'package:sf_commerce_sdk/models/responses/product/product.dart';
import 'package:sf_commerce_sdk/repository/repository.dart';


class ProductRepository extends Repository {
  ProductRepository({required super.dio, required super.config});

  Future<List<Product>> getProducts() async {
    try {
      final response = await dio.get(_path);
      final List<dynamic> jsonResponse = response.data['data'];
      return jsonResponse
          .map((productJson) => Product.fromJson(productJson))
          .toList();
    } catch (e) {
      throw Exception('Failed to load products: $e');
    }
  }

  static const String _path = '/commerce/products';
}
