/// TokenManager
///
/// A singleton class responsible for managing the access token used for authentication
/// in API requests. This class provides methods to set, get, and clear the access token.
/// It ensures that the token is accessible globally within the application.
library;

import '../models/responses/access_token/access_token.dart';

class TokenManager {
  // The private field to hold the access token.
  static AccessToken? _accessToken;

  /// Gets the current access token.
  ///
  /// This getter returns the current access token. If the access token has not
  /// been set, it will return `null`.
  ///
  /// Example usage:
  /// ```dart
  /// String? token = TokenManager.accessToken;
  /// ```
  static AccessToken? get accessToken => _accessToken;

  /// Sets a new access token.
  ///
  /// This method sets the provided access token. It replaces any existing token.
  ///
  /// Example usage:
  /// ```dart
  /// TokenManager.setAccessToken('new_access_token');
  /// ```
  ///
  /// [token]: The new access token to be set.
  static void setAccessToken(AccessToken token) {
    _accessToken = token;
  }

  /// Clears the current access token.
  ///
  /// This method removes the current access token, setting it to `null`.
  /// This is useful for logging out a user or resetting the authentication state.
  ///
  /// Example usage:
  /// ```dart
  /// TokenManager.clearAccessToken();
  /// ```
  static void clearAccessToken() {
    _accessToken = null;
  }
}
