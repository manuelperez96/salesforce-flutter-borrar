import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';

String generateCodeVerifier() {
  final Random random = Random.secure();
  final List<int> values = List<int>.generate(32, (i) => random.nextInt(256));
  return base64UrlEncode(values).replaceAll('=', '');
}

String generateCodeChallenge(String codeVerifier) {
  final bytes = utf8.encode(codeVerifier);
  final digest = sha256.convert(bytes);
  return base64UrlEncode(digest.bytes).replaceAll('=', '');
}

void main() {
  String codeVerifier = generateCodeVerifier();
  String codeChallenge = generateCodeChallenge(codeVerifier);

  print('Code Verifier: $codeVerifier');
  print('Code Challenge: $codeChallenge');
}
