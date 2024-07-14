import 'package:freezed_annotation/freezed_annotation.dart';

part 'access_token.freezed.dart';
part 'access_token.g.dart';

@freezed
class AccessToken with _$AccessToken {
  factory AccessToken({
    required String accessToken,
    required String tokenType,
    required int expiresIn,
    required String scope,
    required String refreshToken,
  }) = _AccessToken;

  factory AccessToken.fromJson(Map<String, dynamic> json) => _$AccessTokenFromJson(json);
}
