import 'package:dio/dio.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:sf_commerce_sdk/models/exception/auth_exception.dart';
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
    MockSpec<DioException>(),
    MockSpec<Response>(),
    MockSpec<Headers>(),
  ],
)
void main() {
  late MockDio dio;
  late MockTokenStorage storage;
  late MockInterceptors interceptors;
  late SfCommerceConfig config;
  late AuthRepository authRepo;
  late MockDioException dioException;
  late MockResponse response;
  late MockHeaders headers;

  setUp(() {
    dio = MockDio();
    storage = MockTokenStorage();
    interceptors = MockInterceptors();
    dioException = MockDioException();
    response = MockResponse();
    headers = MockHeaders();

    config = SfCommerceConfig(
      clientId: 'clientId',
      organizationId: 'organizationId',
      siteId: 'siteId',
      host: 'https://host.com',
    );

    when(dio.interceptors).thenReturn(interceptors);
    when(interceptors.add(any)).thenReturn(null);
    when(dioException.response).thenReturn(response);
    when(response.headers).thenReturn(headers);

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
            'when request fail on get authorization code and fail is not 303, throw UnableDoAnonymousLoginException',
            () async {
              when(response.statusCode).thenReturn(302);
              when(
                dio.get(any, options: anyNamed('options')),
              ).thenThrow(dioException);

              expect(
                () => authRepo.anonymousLogin(),
                throwsA(isA<UnableDoAnonymousLoginException>()),
              );
            },
          );

          test(
            'when request fail on get authorization code and fail is 303 and location in headers is incorrect, throw UnableDoAnonymousLoginException',
            () async {
              when(response.statusCode).thenReturn(303);
              when(headers.map).thenReturn({});
              when(
                dio.get(any, options: anyNamed('options')),
              ).thenThrow(dioException);

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
