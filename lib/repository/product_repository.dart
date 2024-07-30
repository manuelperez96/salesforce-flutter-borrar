import 'package:dio/dio.dart';
import 'package:sf_commerce_sdk/repository/repository.dart';

import '../models/responses/product/product.dart';

class ProductRepository extends Repository {
  ProductRepository(super.sfcommerce);

  Dio get dio => sfcommerce.dio;

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
