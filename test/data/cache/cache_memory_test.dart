import 'package:sf_commerce_sdk/data/cache/cache_memory.dart';
import 'package:test/test.dart';

void main() {
  group(
    'MemoryCache',
    () {
      test(
        'creation',
        () async {
          expect(MemoryCache<String>(), isNotNull);
        },
      );
    },
  );
}
