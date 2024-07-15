import 'repository/product_repository.dart';
import 'utils/logger.dart';

/// Main class for the SFCommerceSDK.
/// This class handles initialization and configuration of the SDK.
class SFCommerceSDK {
  // Required configuration fields for the SDK.
  static late String clientId;
  static late String organizationId;
  static late String shortCode;
  static late String siteId;
  static late String host;

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
  /// ```
  static Future<void> initialize({
    required String clientId,
    required String organizationId,
    required String shortCode,
    required String siteId,
    required String host,
    bool enableVerboseLogs = false,
  }) async {
    if (!host.startsWith('http://') && !host.startsWith('https://')) {
      throw ArgumentError('The host URL must start with "http://" or "https://"');
    }
    SFCommerceSDK.clientId = clientId;
    SFCommerceSDK.organizationId = organizationId;
    SFCommerceSDK.shortCode = shortCode;
    SFCommerceSDK.siteId = siteId;
    SFCommerceSDK.host = host;
    Logger.setEnabled(enableVerboseLogs);
  }

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
  static void setModeVerbose(bool mode) {
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
  static ProductRepository get productRepository => ProductRepository(host);
}
