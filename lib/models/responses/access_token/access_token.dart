import 'package:freezed_annotation/freezed_annotation.dart';

part 'access_token.freezed.dart';
part 'access_token.g.dart';

@freezed
class AccessToken with _$AccessToken {
  factory AccessToken({
    @JsonKey(name: 'token_type') required String tokenType,
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'expires_in') required int expiresIn,
    @JsonKey(name: 'refresh_token') required String refreshToken,
    @JsonKey(name: 'refresh_token_expires_in')
    required int refreshTokenExpiresIn,
    @JsonKey(name: 'usid') required String usid,
    @JsonKey(name: 'customer_id') required String customerId,
    @JsonKey(name: 'enc_user_id') required String encUserId,
  }) = _AccessToken;

  factory AccessToken.fromJson(Map<String, dynamic> json) =>
      _$AccessTokenFromJson(json);
}
