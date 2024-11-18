import 'package:sf_commerce_sdk/sf_commerce_sdk.dart';

class CorsRepository {
  CorsRepository({required CorsApi corsApi}) : _corsApi = corsApi;

  final CorsApi _corsApi;

  Future<void> getCors() {
    return _corsApi.getCors();
  }
}
