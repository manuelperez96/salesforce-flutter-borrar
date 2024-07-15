import 'package:dio/dio.dart';
import 'package:sf_commerce_sdk/repository/repository.dart';
import 'package:sf_commerce_sdk/utils/token_manager.dart';
import '../models/responses/product/product.dart';

class ProductRepository extends Repository {

  ProductRepository(super.host);

  Future<List<Product>> getProducts() async {
    try {
      final response = await dio.get(path);
      final List<dynamic> jsonResponse = response.data['data'];
      return jsonResponse.map((productJson) => Product.fromJson(productJson)).toList();
    } catch (e) {
      throw Exception('Failed to load products: $e');
    }
  }

  @override
  String get path => '/commerce/products';

  @override
  Dio get dio {
    final dio = Dio(BaseOptions(
      baseUrl: host,
      headers: {
        'Authorization': 'Bearer ${TokenManager.accessToken}',
        'Content-Type': 'application/json',
      },
    ));
    return dio;
  }
}
