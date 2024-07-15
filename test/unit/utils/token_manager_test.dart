import 'package:flutter_test/flutter_test.dart';
import 'package:sf_commerce_sdk/models/responses/access_token/access_token.dart';
import 'package:sf_commerce_sdk/utils/token_manager.dart';

void main() {
  group('TokenManager', () {
    test('should set and get access token', () {
      // Arrange
      AccessToken token = AccessToken(accessToken: 'accessToken', tokenType: 'tokenType', expiresIn: 3000, scope: 'scope', refreshToken: 'refreshToken');

      // Act
      TokenManager.setAccessToken(token);
      AccessToken? retrievedToken = TokenManager.accessToken;

      // Assert
      expect(retrievedToken, equals(token));
    });

    test('should clear access token', () {
      // Arrange
      AccessToken token = AccessToken(accessToken: 'accessToken', tokenType: 'tokenType', expiresIn: 3000, scope: 'scope', refreshToken: 'refreshToken');
      TokenManager.setAccessToken(token);

      // Act
      TokenManager.clearAccessToken();
      AccessToken? retrievedToken = TokenManager.accessToken;

      // Assert
      expect(retrievedToken, isNull);
    });

    test('should return null if access token is not set', () {
      // Act
      AccessToken? retrievedToken = TokenManager.accessToken;

      // Assert
      expect(retrievedToken, isNull);
    });
  });
}
