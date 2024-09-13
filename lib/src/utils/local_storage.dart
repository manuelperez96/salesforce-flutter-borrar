import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class LocalStorage {
  LocalStorage({required FlutterSecureStorage storage}) : _storage = storage;

  final FlutterSecureStorage _storage;

  @visibleForTesting
  static const basketKey = 'basketIdKey';

  Future<void> saveBasketID(String basketID) {
    return _storage.write(key: basketKey, value: basketID);
  }

  Future<String?> getBasketID() {
    return _storage.read(key: basketKey);
  }

  Future<void> clear() async {
    await _storage.delete(key: basketKey);
    return;
  }
}
