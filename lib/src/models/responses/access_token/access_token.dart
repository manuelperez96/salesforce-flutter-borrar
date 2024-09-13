import 'package:freezed_annotation/freezed_annotation.dart';

part 'access_token.freezed.dart';
part 'access_token.g.dart';

@freezed
/// {@template access_token}
/// Represents an access token used for authentication and authorization.
/// 
/// This class includes various fields that are part of the access token
/// response from an authentication server.
/// 
/// - `tokenType`: The type of the token (e.g., "Bearer").
/// - `accessToken`: The access token string used for making 
/// authenticated requests.
/// - `expiresIn`: The number of seconds until the access token expires.
/// - `refreshToken`: The refresh token string used to obtain a 
/// new access token.
/// - `refreshTokenExpiresIn`: The number of seconds until the refresh 
/// token expires.
/// - `usid`: The user session ID.
/// - `customerId`: The customer ID associated with the token.
/// - `encUserId`: The encrypted user ID associated with the token.
/// {@endtemplate}
class AccessToken with _$AccessToken {
  /// {@macro access_token}
  factory AccessToken({
    @JsonKey(name: 'token_type') required String tokenType,
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'expires_in') required int expiresIn,
    @JsonKey(name: 'refresh_token') required String refreshToken,
    @JsonKey(name: 'refresh_token_expires_in') required int refreshTokenExpiresIn,
    @JsonKey(name: 'usid') required String usid,
    @JsonKey(name: 'customer_id') required String customerId,
    @JsonKey(name: 'enc_user_id') required String encUserId,
  }) = _AccessToken;

  /// Creates an instance of [AccessToken] from a JSON object.
  factory AccessToken.fromJson(Map<String, dynamic> json) =>
      _$AccessTokenFromJson(json);
}
