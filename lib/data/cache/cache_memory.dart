class MemoryCache<T> {
  const MemoryCache({Map<String, T>? cached}) : _cacheMap = cached ?? const {};

  final Map<String, T> _cacheMap;

  /// Add current value to cache. If exists, update it.
  void addValue(String key, T value) {
    _cacheMap[key] = value;
  }

  bool hasKey(String key) {
    return _cacheMap.containsKey(key);
  }

  T? getValue(String key) {
    return _cacheMap[key];
  }

  void clearAll() {
    _cacheMap.clear();
  }
}
