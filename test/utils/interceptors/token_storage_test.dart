import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:sf_commerce_sdk/models/responses/access_token/access_token.dart';
import 'package:sf_commerce_sdk/utils/interceptors/token_storage.dart';
import 'package:test/test.dart';

import '../../helpers/models/access_token.dart';
import 'token_storage_test.mocks.dart';

class FakeAccessToken extends Fake implements AccessToken {
  @override
  Map<String, dynamic> toJson() {
    return {};
  }
}

@GenerateNiceMocks([MockSpec<FlutterSecureStorage>()])
void main() {
  late MockFlutterSecureStorage storage;

  setUp(() {
    storage = MockFlutterSecureStorage();
  });

  group(
    'TokenStorage',
    () {
      test(
        'Creation',
        () {
          expect(
            TokenStorage(storage: storage),
            isNotNull,
          );
        },
      );

      test(
        'When saveToken(AccessToken token) is called, save token in storage',
        () async {
          final tokenStorage = TokenStorage(storage: storage);

          when(
            await storage.write(
              key: TokenStorage.tokenKey,
              value: anyNamed('value'),
            ),
          ).thenAnswer(
            (_) => Future.value(),
          );

          await tokenStorage.saveToken(FakeAccessToken());

          verify(
            storage.write(
              key: TokenStorage.tokenKey,
              value: anyNamed('value'),
            ),
          );
        },
      );

      test(
        'When getToken() is called and no token is saved return null',
        () async {
          final tokenStorage = TokenStorage(storage: storage);

          when(
            storage.read(key: TokenStorage.tokenKey),
          ).thenAnswer(
            (_) => Future.value(null),
          );

          final token = await tokenStorage.getToken();

          expect(token, isNull);
        },
      );

      test(
        'When getToken() is called and previous token is saved return that token',
        () async {
          final tokenStorage = TokenStorage(storage: storage);

          when(
            storage.read(key: TokenStorage.tokenKey),
          ).thenAnswer(
            (_) => Future.value(jsonStringToken),
          );

          final token = await tokenStorage.getToken();

          expect(token, isNotNull);
        },
      );

      test('When clear() is called, clear asociated tokenKey value', () async {
        final tokenStorage = TokenStorage(storage: storage);

        when(storage.delete(key: TokenStorage.tokenKey)).thenAnswer(
          (_) => Future.value(),
        );
        await tokenStorage.clear();

        verify(storage.delete(key: TokenStorage.tokenKey));
      });
    },
  );
}
