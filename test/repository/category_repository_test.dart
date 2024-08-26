import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:sf_commerce_sdk/models/responses/category/category.dart';
import 'package:sf_commerce_sdk/models/sf_commerce_config.dart';
import 'package:sf_commerce_sdk/repository/category_repository.dart';

import '../helpers/repository/categories_repository.dart';
import 'category_repository_test.mocks.dart';

@GenerateNiceMocks(
  [MockSpec<Dio>(), MockSpec<Response>()],
)
void main() {
  late MockDio mockDio;
  late SfCommerceConfig config;
  late CategoryRepository categoryRepository;
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

    categoryRepository = CategoryRepository(dio: mockDio, config: config);
  });

  group('CategoryRepository', () {
    test(
      'creation',
      () async {
        expect(
          CategoryRepository(
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
            when(mockDio.get(any,
                options: Options(
                  headers: {'Content-Type': 'application/json'},
                ))).thenThrow(Exception());

            expect(() async => await categoryRepository.getRootCategories(),
                throwsA(isA<Exception>()));
          },
        );

        test(
          'getRootCategories returns a category list on success',
          () async {
            when(mockDio.get(any, options: anyNamed('options')))
                .thenAnswer((_) async => response);

            when(response.data).thenReturn(responseJSON);

            final List<Category> result =
                await categoryRepository.getRootCategories();

            expect(result, isNotEmpty);
          },
        );
      },
    );
  });
}
