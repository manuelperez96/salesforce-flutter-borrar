import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:sf_commerce_sdk/data/cache/cache_memory.dart';
import 'package:sf_commerce_sdk/models/responses/category/category.dart';
import 'package:sf_commerce_sdk/models/sf_commerce_config.dart';
import 'package:sf_commerce_sdk/repository/category_repository.dart';

import '../helpers/repository/categories_repository.dart';
import 'category_repository_test.mocks.dart';

@GenerateNiceMocks(
  [
    MockSpec<Dio>(),
    MockSpec<Response>(),
    MockSpec<MemoryCache<List<Category>>>(),
  ],
)
void main() {
  late MockDio mockDio;
  late SfCommerceConfig config;
  late CategoryRepository categoryRepository;
  late MockResponse response;
  late MockMemoryCache mockMemoryCache;

  setUp(() {
    mockDio = MockDio();
    response = MockResponse();
    mockMemoryCache = MockMemoryCache();

    config = SfCommerceConfig(
      clientId: 'clientId',
      organizationId: 'organizationId',
      siteId: 'siteId',
      host: 'https://host.com',
    );

    categoryRepository = CategoryRepository(
      dio: mockDio,
      config: config,
      memoryCache: mockMemoryCache,
    );
  });

  group('CategoryRepository', () {
    test(
      'creation',
      () async {
        expect(
          CategoryRepository(
            dio: mockDio,
            config: config,
            memoryCache: mockMemoryCache,
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
            when(mockMemoryCache.hasKey(any)).thenReturn(false);
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
            when(mockMemoryCache.hasKey(any)).thenReturn(false);
            when(mockDio.get(
              any,
              options: anyNamed('options'),
            )).thenAnswer((_) async => response);

            when(response.data).thenReturn(responseJSON);

            final List<Category> result =
                await categoryRepository.getRootCategories();

            expect(result, isNotEmpty);
          },
        );

        test(
          'when memoryCache has Data, return the data cached',
          () async {
            when(mockMemoryCache.hasKey(any)).thenReturn(true);
            when(mockMemoryCache.getValue(any)).thenReturn(categoryListModel);

            final List<Category> result =
                await categoryRepository.getCategoriesByUrl('url');

            expect(result, categoryListModel);
          },
        );
      },
    );
  });
}
