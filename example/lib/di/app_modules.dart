import 'package:example/domain/repository/auth_repository.dart';
import 'package:example/domain/repository/basket_repository.dart';
import 'package:example/domain/repository/category_repository.dart';
import 'package:example/domain/repository/product_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:sf_commerce_sdk/sf_commerce_sdk.dart';

final inject = GetIt.instance;

abstract final class AppModules {
  static void setup(SFCommerceSDK instance) {
    inject.registerSingleton(instance);
    setupRepositories();
  }

  static void setupRepositories() {
    inject
      ..registerFactory<BasketRepository>(
        () => BasketRepository(
          basketApi: inject.get<SFCommerceSDK>().basketApi,
          productApi: inject.get<SFCommerceSDK>().productApi,
        ),
      )
      ..registerFactory<ProductRepository>(
        () => ProductRepository(
          productApi: inject.get<SFCommerceSDK>().productApi,
        ),
      )
      ..registerFactory<CategoryRepository>(
        () => CategoryRepository(
          categoryApi: inject.get<SFCommerceSDK>().categoryApi,
        ),
      )
      ..registerFactory<AuthRepository>(
        () => AuthRepository(
          authApi: inject.get<SFCommerceSDK>().authApi,
        ),
      );
  }
}
