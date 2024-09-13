
import 'package:sf_commerce_sdk/sf_commerce_sdk.dart';

class AuthRepository {
  AuthRepository({required AuthApi authApi}) : _authApi = authApi;

  final AuthApi _authApi;

  Future<bool> checkStatus() {
    return _authApi.checkStatus();
  }

  Future<void> anonymousLogin() {
    return _authApi.anonymousLogin();
  }
}
