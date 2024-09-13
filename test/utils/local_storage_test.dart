import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:sf_commerce_sdk/src/utils/local_storage.dart';
import 'package:test/test.dart';

import 'local_storage_test.mocks.dart';

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
            LocalStorage(storage: storage),
            isNotNull,
          );
        },
      );

      test(
        'When saveBasketID(String basketID) is called save basketID in storage',
        () async {
          final localStorage = LocalStorage(storage: storage);

          when(
            await storage.write(
              key: LocalStorage.basketKey,
              value: anyNamed('value'),
            ),
          ).thenAnswer(
            (_) => Future<void>.value(),
          );

          await localStorage.saveBasketID('basketID');

          verify(
            storage.write(
              key: LocalStorage.basketKey,
              value: anyNamed('value'),
            ),
          );
        },
      );

      test(
        'When getBasketID() is called and no key is saved return null',
        () async {
          final localStorage = LocalStorage(storage: storage);

          when(
            storage.read(key: LocalStorage.basketKey),
          ).thenAnswer(
            (_) => Future.value(),
          );

          final token = await localStorage.getBasketID();

          expect(token, isNull);
        },
      );

      test(
        'When getBasketID() is called and previous basketID is saved '
        'return that basketID',
        () async {
          final localStorage = LocalStorage(storage: storage);

          when(
            storage.read(key: LocalStorage.basketKey),
          ).thenAnswer(
            (_) => Future.value('basketID'),
          );

          final basketId = await localStorage.getBasketID();

          expect(basketId, isNotNull);
        },
      );

      test('When clear() is called, clear associated key value', () async {
        final localStorage = LocalStorage(storage: storage);

        when(storage.delete(key: LocalStorage.basketKey)).thenAnswer(
          (_) => Future.value(),
        );
        await localStorage.clear();

        verify(storage.delete(key: LocalStorage.basketKey));
      });
    },
  );
}
