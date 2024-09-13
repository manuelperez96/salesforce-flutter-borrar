import 'package:dio/dio.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:sf_commerce_sdk/src/utils/interceptors/refresh_token_interceptor.dart';
import 'package:sf_commerce_sdk/src/utils/interceptors/token_storage.dart';
import 'package:test/test.dart';

import 'refresh_token_interceptor_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<TokenStorage>(),
])
void main() {
  late MockTokenStorage mockTokenStorage;
  late RefreshTokenInterceptor refreshTokenInterceptor;
  setUp(
    () {
      mockTokenStorage = MockTokenStorage();
      refreshTokenInterceptor = RefreshTokenInterceptor(
        organizationId: 'organizationId',
        host: 'host',
        storage: mockTokenStorage,
        clientId: 'clientId',
      );
    },
  );
  group(
    'RefreshToken Interceptor',
    () {
      test(
        'creation',
        () {
          expect(
            RefreshTokenInterceptor(
              organizationId: 'organizationId',
              host: 'host',
              storage: mockTokenStorage,
              clientId: 'clientId',
            ),
            isNotNull,
          );
        },
      );

      test(
          'should return a Exception when the TokenStorage does not have token',
          () async {
        final options = RequestOptions();
        final dioException = DioException(
          requestOptions: options,
          response: Response(
            requestOptions: options,
            statusCode: 401,
          ),
        );

        when(mockTokenStorage.getToken()).thenAnswer((_) async => null);

        expect(
          () => refreshTokenInterceptor.onError(
            dioException,
            ErrorInterceptorHandler(),
          ),
          throwsException,
        );

        verify(mockTokenStorage.getToken()).called(1);
      });
    },
  );
}
