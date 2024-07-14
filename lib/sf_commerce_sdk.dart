import 'repository/access_token_repository.dart';
import 'repository/product_repository.dart';
import 'services/api_service.dart';
import 'utils/logger.dart';

class SFCommerceSDK {
  static late String clientId;
  static late String clientSecret;
  static late String instanceUrl;
  static late String accessToken;
  static late ApiService _apiService;

  static void initialize({
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

  static void setModeVerbose(bool mode) {
    Logger.setEnabled(mode);
  }

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

  static ProductRepository get productRepository => ProductRepository(_apiService.dio);
}
