import 'package:dio/dio.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:sf_commerce_sdk/models/exception/auth_exception.dart';
import 'package:sf_commerce_sdk/models/sf_commerce_config.dart';
import 'package:sf_commerce_sdk/repository/auth/auth_repository.dart';
import 'package:sf_commerce_sdk/utils/interceptors/token_storage.dart';
import 'package:test/test.dart';

import 'auth_repository_test.mocks.dart';

class FakeResponseIncorrectStatusCode extends Fake implements Response {
  @override
  int? get statusCode => 302;
}

class FakeDioException extends Fake implements DioException {
  @override
  Response? get response => FakeResponseIncorrectStatusCode();
}

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

    when(dio.interceptors).thenReturn(interceptors);
    when(interceptors.add(any)).thenReturn(null);
    authRepo = AuthRepository(dio: dio, config: config, storage: storage);
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

      group(
        'anonymousLogin()',
        () {
          test(
            'when request fail on get authorizaton code and fail is not 303, throw UnableDoAnonymousLoginException',
            () async {
              when(
                dio.get(any, options: anyNamed('options')),
              ).thenThrow(FakeDioException());

              expect(
                () => authRepo.anonymousLogin(),
                throwsA(isA<UnableDoAnonymousLoginException>()),
              );
            },
          );
        },
      );
    },
  );
}
