import 'repository/access_token_repository.dart';
import 'repository/product_repository.dart';
import 'services/api_service.dart';

class SFCommerceSDK {
  static late String clientId;
  static late String clientSecret;
  static late String instanceUrl;
  static late String accessToken;
  static late ApiService _apiService;
  static bool logsEnabled = false;

  static void initialize(
      {required String clientId,
      required String clientSecret,
      required String instanceUrl,
      String? username,
      String? password}) async {
    SFCommerceSDK.clientId = clientId;
    SFCommerceSDK.clientSecret = clientSecret;
    SFCommerceSDK.instanceUrl = instanceUrl;

    if (username != null && password != null) {
      _getAccessToken(username: username, password: password);
    }
  }

  static void setModeVerbose(bool mode) {
    logsEnabled = mode;
  }

  static void _getAccessToken(
      {required String username, required String password}) async {
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

  static final productRepository = ProductRepository(_apiService.dio);
}
