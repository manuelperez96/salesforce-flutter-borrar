
import 'package:dio/dio.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:sf_commerce_sdk/models/exception/auth_exception.dart';
import 'package:sf_commerce_sdk/models/sf_commerce_config.dart';
import 'package:sf_commerce_sdk/repository/auth/auth_repository.dart';
import 'package:sf_commerce_sdk/utils/interceptors/token_storage.dart';
import 'package:test/test.dart';

import '../../helpers/models/access_token.dart';
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

          test(
            'when request get authorization code is 202 and fail get token request, throw UnableDoAnonymousLoginException',
            () async {
              when(response.statusCode).thenReturn(202);
              when(headers.map).thenReturn(
                <String, List<String>>{
                  'location': [jsonStringToken]
                },
              );

              when(response.data).thenReturn(
                <String, dynamic>{'code': 'code', 'usid': 'usid'},
              );

              when(
                dio.get(
                  any,
                  options: Options(
                    followRedirects: false,
                    headers: {
                      'Content-Type': 'application/x-www-form-urlencoded'
                    },
                  ),
                ),
              ).thenAnswer((_) async => response);

              when(
                dio.post(
                  any,
                  options: anyNamed('options'),
                  data: anyNamed('data'),
                ),
              ).thenThrow(GetAccessTokenException);

              expect(
                () => authRepo.anonymousLogin(),
                throwsA(isA<UnableDoAnonymousLoginException>()),
              );
            },
          );

          test(
            'when request get authorization code and get access is fail, throw UnableDoAnonymousLoginException',
            () async {
              when(response.statusCode).thenReturn(303);
              when(headers.map).thenReturn(
                <String, List<String>>{
                  'location': [jsonStringToken]
                },
              );
              when(
                dio.get(any, options: anyNamed('options')),
              ).thenThrow(dioException);
              when(
                dio.post(
                  any,
                  options: anyNamed('options'),
                  data: anyNamed('data'),
                ),
              ).thenThrow(GetAccessTokenException);

              expect(
                () => authRepo.anonymousLogin(),
                throwsA(isA<UnableDoAnonymousLoginException>()),
              );
            },
          );

          test(
            'when request is success, save token in local storage',
            () {
              when(storage.saveToken(any)).thenAnswer((_) => Future.value());
              when(response.data).thenReturn(jsonMap);
              when(response.statusCode).thenReturn(303);
              when(headers.map).thenReturn(
                <String, List<String>>{
                  'location': [jsonStringToken],
                },
              );
              when(
                dio.get(
                  any,
                  options: Options(
                    followRedirects: false,
                    headers: {
                      'Content-Type': 'application/x-www-form-urlencoded'
                    },
                  ),
                ),
              ).thenAnswer((_) async => response);
              when(
                dio.post(
                  any,
                  options: anyNamed('options'),
                  data: anyNamed('data'),
                ),
              ).thenAnswer((_) async => response);
            },
          );
        },
      );

      group(
        'checkStatus',
        () {
          test(
            'when there is not previous token, return false',
            () async {
              when(storage.getToken()).thenAnswer((_) async => null);
              expect(await authRepo.checkStatus(), isFalse);
            },
          );

          test(
            'when request fail, return false',
            () async {
              when(
                dio.post(
                  any,
                  options: anyNamed('options'),
                  data: anyNamed('data'),
                ),
              ).thenThrow(Exception());
              expect(await authRepo.checkStatus(), isFalse);
            },
          );

          test(
            'when request is success and return a new token, return true and save new token in storage',
            () async {
              when(storage.getToken()).thenAnswer((_) async => accessToken);
              when(storage.saveToken(any)).thenAnswer((_) => Future.value());
              when(response.data).thenReturn(jsonMap);
              when(
                dio.post(
                  any,
                  options: anyNamed('options'),
                  data: anyNamed('data'),
                ),
              ).thenAnswer((_) async => response);

              expect(await authRepo.checkStatus(), isTrue);
              verify(storage.saveToken(any));
            },
          );
        },
      );
    },
  );
}
