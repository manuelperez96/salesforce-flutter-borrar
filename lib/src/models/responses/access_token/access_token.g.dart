// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccessTokenImpl _$$AccessTokenImplFromJson(Map<String, dynamic> json) =>
    _$AccessTokenImpl(
      tokenType: json['token_type'] as String,
      accessToken: json['access_token'] as String,
      expiresIn: (json['expires_in'] as num).toInt(),
      refreshToken: json['refresh_token'] as String,
      refreshTokenExpiresIn: (json['refresh_token_expires_in'] as num).toInt(),
      usid: json['usid'] as String,
      customerId: json['customer_id'] as String,
      encUserId: json['enc_user_id'] as String,
    );

Map<String, dynamic> _$$AccessTokenImplToJson(_$AccessTokenImpl instance) =>
    <String, dynamic>{
      'token_type': instance.tokenType,
      'access_token': instance.accessToken,
      'expires_in': instance.expiresIn,
      'refresh_token': instance.refreshToken,
      'refresh_token_expires_in': instance.refreshTokenExpiresIn,
      'usid': instance.usid,
      'customer_id': instance.customerId,
      'enc_user_id': instance.encUserId,
    };
