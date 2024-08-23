import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:sf_commerce_sdk/data/cache/cache_memory.dart';
import 'package:sf_commerce_sdk/models/responses/basket/basket.dart';
import 'package:sf_commerce_sdk/models/responses/category/category.dart';
import 'package:sf_commerce_sdk/models/responses/product/product.dart';
import 'package:sf_commerce_sdk/models/responses/product/product_by_category.dart';
import 'package:sf_commerce_sdk/models/sf_commerce_config.dart';
import 'package:sf_commerce_sdk/repository/auth/auth_repository.dart';
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

    Logger.setEnabled(enableVerboseLogs);
  }

  final Dio _dio;
  final SfCommerceConfig _config;
  final MemoryCache _memoryCache = MemoryCache();

  static final _storage = TokenStorage(
    storage: const FlutterSecureStorage(),
  );

  /// Initializes the SFCommerceSDK with the required parameters.
  ///
  /// This method sets the initial configuration for the SDK including the client ID,
  /// organization ID, short code, site ID, host, and optionally enables verbose logging.
  ///
  /// [clientId] - The client ID provided by Salesforce.
  /// [organizationId] - The organization ID provided by Salesforce.
  /// [shortCode] - The short code for the Salesforce instance.
  /// [siteId] - The site ID for the Salesforce instance.
  /// [host] - The host URL for the Salesforce instance.
  /// [enableVerboseLogs] - If true, enables verbose logging. Default is false.
  ///
  /// Example usage:
  /// ```dart
  /// await SFCommerceSDK.initialize(
  ///   clientId: 'your_client_id',
  ///   organizationId: 'your_organization_id',
  ///   shortCode: 'your_short_code',
  ///   siteId: 'your_site_id',
  ///   host: 'your_host_url',
  ///   enableVerboseLogs: true,
  /// );
  // /// ```
  // Future<void> initialize({
  //   required String clientId,
  //   required String organizationId,
  //   required String shortCode,
  //   required String siteId,
  //   required String host,
  //   bool enableVerboseLogs = false,
  // }) async {
  //   // if (!host.startsWith('http://') && !host.startsWith('https://')) {
  //   //   throw ArgumentError(
  //   //       'The host URL must start with "http://" or "https://"');
  //   // }
  //   SFCommerceSDK.clientId = clientId;
  //   SFCommerceSDK.organizationId = organizationId;
  //   SFCommerceSDK.shortCode = shortCode;
  //   SFCommerceSDK.siteId = siteId;
  //   SFCommerceSDK.host = host;
  //   Logger.setEnabled(enableVerboseLogs);
  // }

  /// Sets the verbose logging mode.
  ///
  /// This method enables or disables verbose logging based on the [mode] parameter.
  ///
  /// [mode] - If true, enables verbose logging; if false, disables it.
  ///
  /// Example usage:
  /// ```dart
  /// SFCommerceSDK.setModeVerbose(true);
  /// ```
  void setModeVerbose(bool mode) {
    Logger.setEnabled(mode);
  }

  /// Getter for the [ProductRepository] instance.
  ///
  /// This method provides access to the [ProductRepository] instance for product-related API calls.
  ///
  /// Example usage:
  /// ```dart
  /// ProductRepository productRepo = SFCommerceSDK.productRepository;
  /// ```

  Future<void> anonymousLogin() {
    return _authRepository.anonymousLogin();
  }

  Future<List<Category>> getRootCategories() {
    return _categoryRepository.getRootCategories();
  }

  Future<List<ProductByCategory>> getProductsByCategory(String category) {
    return _productRepository.getProductByCategory(category);
  }

  Future<List<Product>> getProductsByIds(List<String> ids) {
    return _productRepository.getProducts(ids);
  }

  Future<Product> getProductById(String id) {
    return _productRepository.getProduct(id);
  }

  Future<Basket> getBasket() {
    return _basketRepository.getBasket();
  }

  Future<Basket> addProductToBasket(Product product) {
    return _basketRepository.addItemToBasket(product.id);
  }

  @visibleForTesting
  void setAuthRepository(AuthRepository mock) {
    _authRepository = mock;
  }

  @visibleForTesting
  void setProductRepository(ProductRepository mock) {
    _productRepository = mock;
  }

  @visibleForTesting
  void setCategoryRepository(CategoryRepository mock) {
    _categoryRepository = mock;
  }

  late ProductRepository _productRepository =
      ProductRepository(dio: _dio, config: _config, memoryCache: _memoryCache);
  late CategoryRepository _categoryRepository =
      CategoryRepository(dio: _dio, config: _config, memoryCache: _memoryCache);
  late AuthRepository _authRepository = AuthRepository(
    dio: _dio,
    config: _config,
    storage: _storage,
  );
  late final BasketRepository _basketRepository =
      BasketRepository(dio: _dio, config: _config);
}
