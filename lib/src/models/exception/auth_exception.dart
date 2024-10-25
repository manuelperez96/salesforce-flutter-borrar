import 'package:sf_commerce_sdk/sf_commerce_sdk.dart';

/// {@template unable_do_anonymous_login_exception}
/// Exception thrown when an anonymous login attempt fails.
/// {@endtemplate}
class UnableDoAnonymousLoginException extends BaseApiException {
  /// {@macro unable_do_anonymous_login_exception}
  const UnableDoAnonymousLoginException([super.message]);
}

/// {@template unable_do_email_login_exception}
/// Exception thrown when an email login attempt fails.
/// {@endtemplate}
class UnableDoEmailLoginException extends BaseApiException {
  /// {@macro unable_do_email_login_exception}
  const UnableDoEmailLoginException([super.message]);
}

/// {@template get_authorization_code_exception}
/// Exception thrown when there is an error obtaining the authorization code.
/// {@endtemplate}
class GetAuthorizationCodeException extends BaseApiException {
  /// {@macro get_authorization_code_exception}
  const GetAuthorizationCodeException([super.message]);
}

/// {@template get_access_token_exception}
/// Exception thrown when there is an error obtaining the access token.
/// {@endtemplate}
class GetAccessTokenException extends BaseApiException {
  /// {@macro get_access_token_exception}
  const GetAccessTokenException([super.message]);
}

/// {@template get_refresh_token_exception}
/// Exception thrown when there is an error obtaining the refresh token.
/// {@endtemplate}
class GetRefreshTokenException extends BaseApiException {
  /// {@macro get_refresh_token_exception}
  const GetRefreshTokenException([super.message]);
}
