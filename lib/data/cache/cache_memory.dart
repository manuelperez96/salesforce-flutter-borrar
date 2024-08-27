class MemoryCache<T> {
  const MemoryCache() : _cacheMap = const {};

  final Map<String, T> _cacheMap;

  void addUpdateValue(String key, T value) {
    _cacheMap[key] = value;
  }

  bool hasKey(String key) {
    return _cacheMap.containsKey(key);
  }

  T? getValue(String key) {
    return _cacheMap[key];
  }

  clearAll() {
    _cacheMap.clear();
  }
}
