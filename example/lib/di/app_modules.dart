import 'package:get_it/get_it.dart';
import 'package:sf_commerce_sdk/sf_commerce_sdk.dart';

final inject = GetIt.instance;

class AppModules {
  setup(SFCommerceSDK instance) {
    inject.registerSingleton(instance);
  }
}
