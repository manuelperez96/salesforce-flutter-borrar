import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sf_commerce_sdk/models/responses/access_token/access_token.dart';

class TokenStorage {
  TokenStorage({required this.storage});

  final FlutterSecureStorage storage;

  @visibleForTesting
  static const tokenKey = 'tokenKey';
 

  Future<void> saveToken(AccessToken token)  {
    return storage.write(key: tokenKey, value: jsonEncode(token.toJson()));
  }

  Future<AccessToken?> getToken() async  {
    final stringToken = await storage.read(key: tokenKey);
    if (stringToken == null) return null;
    return AccessToken.fromJson(jsonDecode(stringToken));
  }

  Future<void> clear() {
    return storage.delete(key: tokenKey);
  }
}
