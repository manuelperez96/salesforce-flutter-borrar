import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';

/// {@template pkce_helper}
/// A utility class for generating PKCE (Proof Key for Code Exchange) code 
/// verifier and code challenge.
/// 
/// This class provides methods to generate a code verifier and 
/// its corresponding code challenge using the PKCE standard. 
/// The code verifier is a high-entropy cryptographic random string using 
/// the unreserved characters [A-Z] / [a-z] / [0-9] / "-" / "." / "_" / "~", 
/// with a minimum length of 43 characters and a maximum length of 128 
/// characters. The code challenge is a Base64 URL-encoded SHA256 
/// hash of the code verifier.
/// {@endtemplate}
abstract final class PkceHelper {
  /// Generates a code verifier.
  ///
  /// - `seed`: An optional list of integers to use as the seed for 
  /// generating the code verifier.
  /// 
  /// Returns a Base64 URL-encoded string without padding.
  static String _generateCodeVerifier({List<int>? seed}) {
    if (seed != null) {
      return base64UrlEncode(seed).replaceAll('=', '');
    }
    final random = Random.secure();
    final values = List<int>.generate(32, (i) => random.nextInt(256));
    return base64UrlEncode(values).replaceAll('=', '');
  }

  /// Generates a code challenge from the given code verifier.
  ///
  /// - `codeVerifier`: The code verifier to generate the code challenge from.
  /// 
  /// Returns a Base64 URL-encoded SHA256 hash of the code verifier 
  /// without padding.
  static String _generateCodeChallenge(String codeVerifier) {
    final bytes = utf8.encode(codeVerifier);
    final digest = sha256.convert(bytes);
    return base64UrlEncode(digest.bytes).replaceAll('=', '');
  }

  /// Generates a code verifier and its corresponding code challenge.
  ///
  /// - `seed`: An optional list of integers to use as the seed for generating 
  /// the code verifier.
  /// 
  /// Returns a tuple containing the code verifier and the code challenge.
  /// 
  /// Throws an assertion error if the seed is not null and its 
  /// length is not 32.
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
