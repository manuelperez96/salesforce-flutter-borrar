import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:sf_commerce_sdk/api/auth_api.dart';
import 'package:sf_commerce_sdk/api/basket_api.dart';
import 'package:sf_commerce_sdk/api/category_api.dart';
import 'package:sf_commerce_sdk/api/order_api.dart';
import 'package:sf_commerce_sdk/api/product_api.dart';
import 'package:sf_commerce_sdk/models/sf_commerce_config.dart';
import 'package:sf_commerce_sdk/utils/interceptors/logger_interceptor.dart';
import 'package:sf_commerce_sdk/utils/interceptors/token_storage.dart';
import 'package:sf_commerce_sdk/utils/local_storage.dart';

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

  static final _tokenStorage = TokenStorage(
    storage: const FlutterSecureStorage(),
  );

  static final _localStorage = LocalStorage(
    storage: const FlutterSecureStorage(),
  );

  late final ProductApi productApi = ProductApi(
    dio: _dio,
    config: _config,
  );

  late final CategoryApi categoryApi = CategoryApi(
    dio: _dio,
    config: _config,
  );

  late AuthApi authApi = AuthApi(
    dio: _dio,
    config: _config,
    storage: _tokenStorage,
  );

  late BasketApi basketApi = BasketApi(
    dio: _dio,
    config: _config,
    storage: _localStorage,
  );

  late OrderApi orderApi = OrderApi(
    dio: _dio,
    config: _config,
  );

  bool get modeVerbose => Logger.isEnabled;
  set modeVerbose(bool mode) {
    Logger.isEnabled = mode;
  }
}
