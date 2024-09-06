import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sf_commerce_sdk/models/responses/access_token/access_token.dart';

class TokenStorage {
  TokenStorage({required FlutterSecureStorage storage}) : _storage = storage;

  final FlutterSecureStorage _storage;

  @visibleForTesting
  static const tokenKey = 'tokenKey';

  Future<void> saveToken(AccessToken token) {
    return _storage.write(key: tokenKey, value: jsonEncode(token.toJson()));
  }

  Future<AccessToken?> getToken() async {
    final stringToken = await _storage.read(key: tokenKey);
    if (stringToken == null) return null;
    return AccessToken.fromJson(
      jsonDecode(stringToken) as Map<String, dynamic>,
    );
  }

  Future<void> clear() async {
    await _storage.delete(key: tokenKey);
    return;
  }
}
