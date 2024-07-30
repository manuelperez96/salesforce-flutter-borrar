import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';
import 'package:sf_commerce_sdk/repository/repository.dart';

class AuthRepository extends Repository {
  AuthRepository(super.sfcommerce);

  Dio get dio => sfcommerce.dio;

  Future<void> anonymousLogin() async {
    try {
      String verifierBase64 = base64URL(generateCodeVerifier());
      String challengeBase64 =
          base64URLDigest(generateCodeChallenge(verifierBase64));

      final path =
          '${sfcommerce.host}/shopper/auth/v1/organizations/${sfcommerce.organizationId}/oauth2/authorize?response_type=code&client_id=${sfcommerce.clientId}&hint=guest&code_challenge=$challengeBase64&redirect_uri=http://localhost:3000/callback';

      final response = await dio.get(path,
          options: Options(headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
            // "Access-Control-Allow-Origin": "*",
            // "Access-Control-Allow-Headers":
            //     "Origin, X-Requested-With, Content-Type, Accept",
            // "Access-Control-Allow-Methods": "GET, POST, PUT, DELETE, OPTIONS",
            // 'Accept': '*/*',
          }));

      //TODO: I wish God fix my code
    } on DioException catch (e) {
      throw Exception('Failed to get Auth: $e');
    }
  }

  Future<void> getRefreshAccessToken() async {
    try {} catch (e) {
      throw Exception('Failed to getRefreshAccessToken: $e');
    }
  }

  // Función para generar el Code Verifier
  String generateCodeVerifier() {
    return generateRandomString(96);
  }

// Función para generar una cadena aleatoria
  String generateRandomString(int length) {
    const String possible =
        "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
    final Random random = Random.secure();
    String text = "";

    for (int i = 0; i < length; i++) {
      text += possible[random.nextInt(possible.length)];
    }

    return text;
  }

// Función para generar el Code Challenge
  Digest generateCodeChallenge(String codeVerifier) {
    return sha256.convert(utf8.encode(codeVerifier));
  }

// Función para codificar en Base64URL
  String base64URL(String input) {
    return base64Url
        .encode(utf8.encode(input))
        .replaceAll('=', '')
        .replaceAll('+', '-')
        .replaceAll('/', '_');
  }

// Función para codificar Digest en Base64URL
  String base64URLDigest(Digest digest) {
    return base64Url
        .encode(digest.bytes)
        .replaceAll('=', '')
        .replaceAll('+', '-')
        .replaceAll('/', '_');
  }

  Future<void> getToken() async {
    try {} catch (e) {
      throw Exception('Failed to get Token: $e');
    }
  }
}
