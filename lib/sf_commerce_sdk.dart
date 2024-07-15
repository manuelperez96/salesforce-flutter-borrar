import 'repository/access_token_repository.dart';
import 'repository/product_repository.dart';
import 'services/api_service.dart';
import 'utils/logger.dart';

/// Main class for the SFCommerceSDK.
/// This class handles initialization and configuration of the SDK.
class SFCommerceSDK {
  static late String clientId;
  static late String clientSecret;
  static late String instanceUrl;
  static late String accessToken;
  static late ApiService _apiService;

  /// Initializes the SDK with the given parameters.
  ///
  /// [clientId] - The client ID for Salesforce authentication.
  /// [clientSecret] - The client secret for Salesforce authentication.
  /// [instanceUrl] - The instance URL of the Salesforce organization.
  /// [username] - The username for Salesforce authentication (optional).
  /// [password] - The password for Salesforce authentication (optional).
  /// [enableVerboseLogs] - If true, enables verbose logging (optional, default is false).
  static Future<void> initialize({
    required String clientId,
    required String clientSecret,
    required String instanceUrl,
    String? username,
    String? password,
    bool enableVerboseLogs = false,
  }) async {
    SFCommerceSDK.clientId = clientId;
    SFCommerceSDK.clientSecret = clientSecret;
    SFCommerceSDK.instanceUrl = instanceUrl;
    Logger.setEnabled(enableVerboseLogs);

    if (username != null && password != null) {
      await _getAccessToken(username: username, password: password);
    }
  }

  /// Sets the verbose logging mode.
  ///
  /// [mode] - If true, enables verbose logging.
  static void setModeVerbose(bool mode) {
    Logger.setEnabled(mode);
  }

  /// Fetches the access token using the given credentials.
  ///
  /// [username] - The username for Salesforce authentication.
  /// [password] - The password for Salesforce authentication.
  static Future<void> _getAccessToken({
    required String username,
    required String password,
  }) async {
    final authService = ApiService.auth();
    final accessTokenRepository = AccessTokenRepository(authService.dio);
    final accessTokenResponse = await accessTokenRepository.fetchAccessToken(
      clientId: clientId,
      clientSecret: clientSecret,
      username: username,
      password: password,
    );

    SFCommerceSDK.accessToken = accessTokenResponse.accessToken;
    _apiService = ApiService(instanceUrl, accessToken);
  }

  /// Getter for the [ProductRepository] instance.
  static ProductRepository get productRepository => ProductRepository(_apiService.dio);
}
