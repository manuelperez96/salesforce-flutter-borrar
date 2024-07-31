import 'package:dio/dio.dart';
import 'package:sf_commerce_sdk/repository/auth/auth_repository.dart';
import 'package:sf_commerce_sdk/utils/credentials_wallet.dart';
import 'package:sf_commerce_sdk/utils/network_util.dart';

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
    dio.options
      ..baseUrl = host
      ..receiveDataWhenStatusError = true
      ..headers = {
        'Content-Type': 'application/json',
      };

    dio.interceptors.add(NetworkUtil.createLogsInterceptor());

    Logger.setEnabled(enableVerboseLogs);
  }

  late final _refreshTokenUrl =
      '$host/shopper/auth/v1/organizations/$organizationId/oauth2/token';

  Future<void> _addAuthHeader(Map<String, dynamic> headers) async {
    final refreshToken = await CredentialsWallet.getRefreshToken();
    final accessToken = await CredentialsWallet.getAccessToken();

    if (!refreshToken.isEmpty) {
      headers['Authorization'] = 'Bearer $accessToken';
    } // You can also add basic authorization here
  }

  Future<void> _refreshToken() async {
    final refreshToken = await CredentialsWallet.getRefreshToken();
    final response = await Dio().post(_refreshTokenUrl,
        data: {CredentialsWallet.refreshTokenKey: refreshToken});

    if (response.statusCode == 200) {
      await CredentialsWallet.saveAll(response.data);
    } else {
      await CredentialsWallet.clearAll();
    }
  }

  Future<Response<dynamic>> _retry(RequestOptions requestOptions) async {
    final headers = requestOptions.headers;
    await _addAuthHeader(headers);
    final options = Options(method: requestOptions.method, headers: headers);

    return Dio().request<dynamic>(requestOptions.path,
        data: requestOptions.data,
        queryParameters: requestOptions.queryParameters,
        options: options);
  }

  final Dio dio;
  final String clientId;
  final String organizationId;
  final String siteId;
  final String host;

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
