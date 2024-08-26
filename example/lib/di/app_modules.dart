import 'package:get_it/get_it.dart';
import 'package:sf_commerce_sdk/sf_commerce_sdk.dart';

final inject = GetIt.instance;

abstract final class AppModules {
  static setup(SFCommerceSDK instance) {
    inject.registerSingleton(instance);
  }
}
