import 'package:dio/dio.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:sf_commerce_sdk/models/sf_commerce_config.dart';
import 'package:sf_commerce_sdk/repository/auth/auth_repository.dart';
import 'package:sf_commerce_sdk/utils/interceptors/token_storage.dart';
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
  late SfCommerceConfig config;
  late AuthRepository authRepo;

  setUp(() {
    dio = MockDio();
    storage = MockTokenStorage();
    interceptors = MockInterceptors();

    config = SfCommerceConfig(
      clientId: 'clientId',
      organizationId: 'organizationId',
      siteId: 'siteId',
      host: 'https://host.com',
    );
    authRepo = AuthRepository(dio: dio, config: config, storage: storage);

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
              config: config,
              storage: storage,
            ),
            isNotNull,
          );
        },
      );

      // group(
      //   'anonymousLogin()',
      //   () {
      //     test(
      //       'When accessToken Endpoint failed, anonymous login UnableDoAnonymousLoginException',
      //       () async {
      //         when(
      //           dio.post(
      //             '${config.host}/shopper/auth/v1/organizations/${config.organizationId}/oauth2/token',
      //             options: Options(
      //               headers: {
      //                 'Content-Type': 'application/x-www-form-urlencoded'
      //               },
      //             ),
      //             data: anyNamed('data'),
      //           ),
      //         ).thenThrow(
      //           Exception(),
      //         );

      //         try {
      //           await authRepo.anonymousLogin();
      //         } catch (e) {
      //           expect(e, isA<UnableDoAnonymousLoginException>);
      //         }
      //       },
      //     );
      //   },
      // );
    },
  );
}
