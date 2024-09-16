import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sf_commerce_sdk/src/models/responses/access_token/access_token.dart';

/// {@template token_storage}
/// A class for securely storing and retrieving access tokens 
/// using [FlutterSecureStorage].
/// 
/// This class provides methods to save, retrieve, and clear access tokens.
/// 
/// - `storage`: The instance of [FlutterSecureStorage] used for secure storage.
/// {@endtemplate}
class TokenStorage {
  /// {@macro token_storage}
  TokenStorage({required FlutterSecureStorage storage}) : _storage = storage;

  final FlutterSecureStorage _storage;

  /// The key used to store the access token.
  @visibleForTesting
  static const tokenKey = 'tokenKey';

  /// Saves the access token to secure storage.
  ///
  /// - `token`: The [AccessToken] to save.
  ///
  /// Returns a [Future] that completes when the token is saved.
  Future<void> saveToken(AccessToken token) {
    return _storage.write(key: tokenKey, value: jsonEncode(token.toJson()));
  }

  /// Retrieves the access token from secure storage.
  ///
  /// Returns a [Future] that completes with the [AccessToken] if found, 
  /// or `null` if not found.
  Future<AccessToken?> getToken() async {
    final stringToken = await _storage.read(key: tokenKey);
    if (stringToken == null) return null;
    return AccessToken.fromJson(
      jsonDecode(stringToken) as Map<String, dynamic>,
    );
  }

  /// Clears the access token from secure storage.
  ///
  /// Returns a [Future] that completes when the token is cleared.
  Future<void> clear() async {
    await _storage.delete(key: tokenKey);
    return;
  }
}
