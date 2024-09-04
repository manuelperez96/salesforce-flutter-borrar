import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:sf_commerce_sdk/api/category_api.dart';
import 'package:sf_commerce_sdk/models/sf_commerce_config.dart';

import '../helpers/repository/categories_repository.dart';
import 'category_api_test.mocks.dart';

@GenerateNiceMocks(
  [
    MockSpec<Dio>(),
    MockSpec<Response<Map<String, dynamic>>>(),
  ],
)
void main() {
  late MockDio mockDio;
  late SfCommerceConfig config;
  late CategoryApi categoryRepository;
  late MockResponse response;

  setUp(() {
    mockDio = MockDio();
    response = MockResponse();

    config = SfCommerceConfig(
      clientId: 'clientId',
      organizationId: 'organizationId',
      siteId: 'siteId',
      host: 'https://host.com',
    );

    categoryRepository = CategoryApi(
      dio: mockDio,
      config: config,
    );
  });

  group('CategoryRepository', () {
    test(
      'creation',
      () async {
        expect(
          CategoryApi(
            dio: mockDio,
            config: config,
          ),
          isNotNull,
        );
      },
    );

    group(
      'getRootCategories()',
      () {
        test(
          'getRootCategories throws an exception on failure',
          () async {
            when(
              mockDio.get<dynamic>(
                any,
                options: Options(
                  headers: {'Content-Type': 'application/json'},
                ),
              ),
            ).thenThrow(Exception());

            expect(
              () => categoryRepository.getRootCategories(),
              throwsA(isA<Exception>()),
            );
          },
        );

        test(
          'getRootCategories returns a category list on success',
          () async {
            when(
              mockDio.get<Map<String, dynamic>>(
                any,
                options: anyNamed('options'),
              ),
            ).thenAnswer((_) async => response);

            when(response.data).thenReturn(responseJSON);

            final result = await categoryRepository.getRootCategories();

            expect(result, isNotEmpty);
          },
        );
      },
    );
  });
}
