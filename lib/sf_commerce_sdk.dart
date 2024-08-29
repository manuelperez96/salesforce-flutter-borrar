import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:sf_commerce_sdk/data/cache/cache_memory.dart';
import 'package:sf_commerce_sdk/models/responses/category/category.dart';
import 'package:sf_commerce_sdk/models/responses/product/product.dart';
import 'package:sf_commerce_sdk/models/sf_commerce_config.dart';
import 'package:sf_commerce_sdk/repository/auth_repository.dart';
import 'package:sf_commerce_sdk/repository/basket_repository.dart';
import 'package:sf_commerce_sdk/repository/category_repository.dart';
import 'package:sf_commerce_sdk/repository/product_repository.dart';
import 'package:sf_commerce_sdk/utils/interceptors/logger_interceptor.dart';
import 'package:sf_commerce_sdk/utils/interceptors/token_storage.dart';

/// Main class for the SFCommerceSDK.
/// This class handles initialization and configuration of the SDK.
class SFCommerceSDK {
  SFCommerceSDK({
    required SfCommerceConfig config,
    bool enableVerboseLogs = false,
    Dio? dioInstance,
  })  : _config = config,
        _dio = dioInstance ?? Dio() {
    _dio.options.headers = {
      'Content-Type': 'application/json',
    };

    _dio.interceptors.add(NetworkUtil.createLogsInterceptor());

    Logger.isEnabled = enableVerboseLogs;
  }

  final Dio _dio;
  final SfCommerceConfig _config;

  static final _storage = TokenStorage(
    storage: const FlutterSecureStorage(),
  );

  late final ProductRepository productRepository = ProductRepository(
    dio: _dio,
    config: _config,
    memoryCache: MemoryCache<Product>(),
  );

  late final CategoryRepository categoryRepository = CategoryRepository(
    dio: _dio,
    config: _config,
    memoryCache: MemoryCache<List<Category>>(),
  );

  late AuthRepository authRepository = AuthRepository(
    dio: _dio,
    config: _config,
    storage: _storage,
  );

  late BasketRepository basketRepository = BasketRepository(
    dio: _dio,
    config: _config,
  );

  bool get modeVerbose => Logger.isEnabled;
  set modeVerbose(bool mode) {
    Logger.isEnabled = mode;
  }

  void clearCache() {
    productRepository.clearCache();
    categoryRepository.clearCache();
  }
}
