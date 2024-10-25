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

  /// The key used for storing the user email.
  ///
  /// This key is marked as visible for testing purposes.
  @visibleForTesting
  static const emailKey = 'userEmail';

  /// Saves the basket ID to secure storage.
  ///
  /// - `basketID`: The basket ID to save.
  ///
  /// Returns a [Future] that completes when the basket ID is saved.
  Future<void> saveBasketID(String basketID) {
    return _storage.write(key: basketKey, value: basketID);
  }

  /// Saves the user email to secure storage.
  ///
  /// - `userEmail`: The email to save.
  ///
  /// Returns a [Future] that completes when the userEmail is saved.
  Future<void> saveUserEmail(String userEmail) {
    return _storage.write(key: emailKey, value: userEmail);
  }

  /// Retrieves the basket ID from secure storage.
  ///
  /// Returns a [Future] that completes with the basket ID if found,
  /// or `null` if not found.
  Future<String?> getBasketID() {
    return _storage.read(key: basketKey);
  }

  /// Retrieves the user email from secure storage.
  ///
  /// Returns a [Future] that completes with the user email if found,
  /// or `null` if not found.
  Future<String?> getUserEmail() {
    return _storage.read(key: emailKey);
  }

  /// Clears the values from secure storage.
  ///
  /// Returns a [Future] that completes when the values are cleared.
  Future<void> clear() async {
    await Future.wait([
      _storage.delete(key: basketKey),
      _storage.delete(key: emailKey),
    ]);
    return;
  }
}
