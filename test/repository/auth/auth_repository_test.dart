import 'package:dio/dio.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:sf_commerce_sdk/models/sf_commerce_config.dart';
import 'package:sf_commerce_sdk/repository/auth/auth_repository.dart';
import 'package:sf_commerce_sdk/utils/interceptors/credentials_wallet.dart';
import 'package:test/test.dart';

import 'auth_repository_test.mocks.dart';

@GenerateNiceMocks(
  [
    MockSpec<Dio>(),
    MockSpec<TokenStorage>(),
    MockSpec<Interceptors>(),
  ],
)
void main() {
  late MockDio dio;
  late MockTokenStorage storage;
  late MockInterceptors interceptors;

  setUp(() {
    dio = MockDio();
    storage = MockTokenStorage();
    interceptors = MockInterceptors();

    when(dio.interceptors).thenReturn(interceptors);
    when(interceptors.add(any)).thenReturn(null);
  });

  group(
    'AuthRepository',
    () {
      test(
        'creation',
        () async {
          expect(
            AuthRepository(
              dio: dio,
              config: SfCommerceConfig(
                clientId: 'clientId',
                organizationId: 'organizationId',
                siteId: 'siteId',
                host: 'https://host.com',
              ),
              storage: storage,
            ),
            isNotNull,
          );
        },
      );
    },
  );
}
