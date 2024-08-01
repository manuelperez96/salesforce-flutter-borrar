import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:sf_commerce_sdk/repository/auth/auth_repository.dart';
import 'package:sf_commerce_sdk/utils/interceptors/credentials_wallet.dart';
import 'package:sf_commerce_sdk/utils/interceptors/logger_interceptor.dart';
import 'package:sf_commerce_sdk/utils/interceptors/refresh_token_interceptor.dart';

import 'repository/product_repository.dart';

/// Main class for the SFCommerceSDK.
/// This class handles initialization and configuration of the SDK.
class SFCommerceSDK {
  SFCommerceSDK({
    required this.clientId,
    required this.organizationId,
    required this.siteId,
    required this.host,
    bool enableVerboseLogs = false,
    Dio? dioInstance,
  })  : assert(
          host.startsWith('http://') || host.startsWith('https://'),
          'The host URL must start with "http://" or "https://"',
        ),
        dio = dioInstance ?? Dio() {
    dio.options.headers = {
      'Content-Type': 'application/json',
    };

    dio.interceptors
      ..add(
        RefreshTokenInterceptor(
          organizationId: organizationId,
          host: host,
          storage: _storage,
        ),
      )
      ..add(NetworkUtil.createLogsInterceptor());

    Logger.setEnabled(enableVerboseLogs);
  }

  final Dio dio;
  final String clientId;
  final String organizationId;
  final String siteId;
  final String host;

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

  late final productRepository = ProductRepository(this);
  late final authRepository = AuthRepository(this);
}
