import 'package:dio/dio.dart';
import '../models/responses/product/product.dart';

class ProductRepository {
  final Dio _dio;

  ProductRepository(this._dio);

  Future<List<Product>> getProducts() async {
    try {
      final response = await _dio.get('/commerce/products');
      final List<dynamic> jsonResponse = response.data['data'];
      return jsonResponse.map((productJson) => Product.fromJson(productJson)).toList();
    } catch (e) {
      throw Exception('Failed to load products: $e');
    }
  }

// Add other repository methods as needed
}
