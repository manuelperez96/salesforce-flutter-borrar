import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';

abstract final class PkceHelper {
  static String _generateCodeVerifier({List<int>? seed}) {
    if (seed != null) {
      return base64UrlEncode(seed).replaceAll('=', '');
    }
    final Random random = Random.secure();
    final List<int> values = List<int>.generate(32, (i) => random.nextInt(256));
    return base64UrlEncode(values).replaceAll('=', '');
  }

  static String _generateCodeChallenge(String codeVerifier) {
    //final bytes = utf8.encode('dfsgfjsjfsdfgsdfgsdfg');
    final bytes = utf8.encode(codeVerifier);
    final digest = sha256.convert(bytes);
    return base64UrlEncode(digest.bytes).replaceAll('=', '');
  }

  static (String codeVerifier, String codeChallenge) generateCodes({
    List<int>? seed,
  }) {
    assert(
      seed == null || seed.length == 32,
      'seed must be null or has length 32',
    );
    final codeVerifier = _generateCodeVerifier(seed: seed);
    final codeChallenge = _generateCodeChallenge(codeVerifier);

    return (codeVerifier, codeChallenge);
  }
}
