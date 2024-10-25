import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:sf_commerce_sdk/sf_commerce_sdk.dart';
import 'package:sf_commerce_sdk/src/utils/utils.dart';

/// {@template sf_commerce_sdk}
/// The main class for interacting with the SF Commerce SDK.
///
/// This class provides access to various sub-APIs such as Product, Category,
/// Auth, Basket, etc. It also handles authorization and refresh token
/// and logging.
///
///
/// The [config] parameter is required to initialize the SDK with the necessary
/// configuration details.
///
/// The [enableVerboseLogs] parameter can be set to true to enable
/// verbose logging.
///
/// [dioInstance] should only be used for testing purposes.
///
/// Example usage:
///
/// ```dart
/// final sdk = SFCommerceSDK(
///   config: SfCommerceConfig(
///     clientId: 'your-client-id',
///     organizationId: 'your-organization-id',
///     siteId: 'your-site-id',
///     host: 'https://your-host-url',
///   ),
///   enableVerboseLogs: true,
/// );
/// ```
/// {@endtemplate}
class SFCommerceSDK {
  /// {@macro sf_commerce_sdk}
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

  /// The Dio instance used for making HTTP requests.
  final Dio _dio;

  /// The configuration for the SF Commerce SDK.
  final SfCommerceConfig _config;

  /// Token storage for authentication tokens.
  static final _tokenStorage = TokenStorage(
    storage: const FlutterSecureStorage(),
  );

  /// Local storage for storing data locally.
  static final _localStorage = LocalStorage(
    storage: const FlutterSecureStorage(),
  );

  /// API for interacting with products.
  late final ProductApi productApi = ProductApi(
    dio: _dio,
    config: _config,
  );

  /// API for interacting with categories.
  late final CategoryApi categoryApi = CategoryApi(
    dio: _dio,
    config: _config,
  );

  /// API for authentication.
  late AuthApi authApi = AuthApi(
    dio: _dio,
    config: _config,
    storage: _tokenStorage,
    localStorage: _localStorage,
  );

  /// API for interacting with the basket.
  late BasketApi basketApi = BasketApi(
    dio: _dio,
    config: _config,
    storage: _localStorage,
  );

  /// API for interacting with orders.
  late OrderApi orderApi = OrderApi(
    dio: _dio,
    config: _config,
  );

  /// Gets or sets the verbose logging mode.
  bool get modeVerbose => Logger.isEnabled;
  set modeVerbose(bool mode) {
    Logger.isEnabled = mode;
  }
}
