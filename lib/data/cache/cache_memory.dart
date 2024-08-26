class MemoryCache<T> {
  MemoryCache();

  // Cache data
  final Map<String, T> cacheItem = {};
  final Map<String, List<T>> cacheItemList = {};

  void addValue(String key, T value) {
    cacheItem[key] = value;
  }

  bool hasKey(String key) {
    return cacheItem.containsKey(key);
  }

  T getValue(String key) {
    return cacheItem[key]!;
  }

  void addListValue(String key, List<T> value) {
    cacheItemList[key] = value;
  }

  bool hasListKey(String key) {
    return cacheItemList.containsKey(key);
  }

  List<T> getListValue(String key) {
    return cacheItemList[key]!;
  }

  clearAll() {
    cacheItem.clear();
    cacheItemList.clear();
  }
}
