import 'package:sf_commerce_sdk/data/cache/cache_memory.dart';
import 'package:sf_commerce_sdk/models/responses/product/product.dart';
import 'package:test/test.dart';

void main() {
  group(
    MemoryCache,
    () {
      test(
        'creation',
        () async {
          expect(MemoryCache(), isNotNull);
        },
      );

      test(
        'clearAll() remove all data from cache',
        () async {
          MemoryCache memoryCache = MemoryCache();
          memoryCache.productById = {
            'id': Product(
                id: 'id',
                name: 'name',
                description: 'description',
                price: 20.00,
                currency: 'USC')
          };
          expect(memoryCache.productById.containsKey('id'), true);
          memoryCache.clearAll();
          expect(memoryCache.productById.containsKey('id'), false);
        },
      );
    },
  );
}
