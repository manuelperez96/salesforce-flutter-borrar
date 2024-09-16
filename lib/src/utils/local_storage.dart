import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

/// {@template local_storage}
/// A class for securely storing and retrieving the 
/// basket ID using [FlutterSecureStorage].
/// 
/// This class provides methods to save, retrieve, and clear the basket ID.
/// 
/// - `storage`: The instance of [FlutterSecureStorage] used for secure storage.
/// {@endtemplate}
class LocalStorage {
  /// {@macro local_storage}
  LocalStorage({required FlutterSecureStorage storage}) : _storage = storage;

  final FlutterSecureStorage _storage;

  /// The key used for storing the basket ID.
  /// 
  /// This key is marked as visible for testing purposes.
  @visibleForTesting
  static const basketKey = 'basketIdKey';

  /// Saves the basket ID to secure storage.
  ///
  /// - `basketID`: The basket ID to save.
  ///
  /// Returns a [Future] that completes when the basket ID is saved.
  Future<void> saveBasketID(String basketID) {
    return _storage.write(key: basketKey, value: basketID);
  }

  /// Retrieves the basket ID from secure storage.
  ///
  /// Returns a [Future] that completes with the basket ID if found, 
  /// or `null` if not found.
  Future<String?> getBasketID() {
    return _storage.read(key: basketKey);
  }

  /// Clears the basket ID from secure storage.
  ///
  /// Returns a [Future] that completes when the basket ID is cleared.
  Future<void> clear() async {
    await _storage.delete(key: basketKey);
    return;
  }
}
