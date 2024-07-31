import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';

abstract final class PkceHelper {
  static String _generateCodeVerifier() {
    final Random random = Random.secure();
    final List<int> values = List<int>.generate(32, (i) => random.nextInt(256));
    return base64UrlEncode(values).replaceAll('=', '');
  }

  static String _generateCodeChallenge(String codeVerifier) {
    final bytes = utf8.encode(codeVerifier);
    final digest = sha256.convert(bytes);
    return base64UrlEncode(digest.bytes).replaceAll('=', '');
  }

  static (String codeVerifier, String codeChallenge) generateCodes() {
    final codeVerifier = _generateCodeVerifier();
    final codeChallenge = _generateCodeChallenge(codeVerifier);

    return (codeVerifier, codeChallenge);
  }
}
