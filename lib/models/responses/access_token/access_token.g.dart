// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccessTokenImpl _$$AccessTokenImplFromJson(Map<String, dynamic> json) =>
    _$AccessTokenImpl(
      accessToken: json['accessToken'] as String,
      tokenType: json['tokenType'] as String,
      expiresIn: (json['expiresIn'] as num).toInt(),
      scope: json['scope'] as String,
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$$AccessTokenImplToJson(_$AccessTokenImpl instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'tokenType': instance.tokenType,
      'expiresIn': instance.expiresIn,
      'scope': instance.scope,
      'refreshToken': instance.refreshToken,
    };
