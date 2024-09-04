// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ing_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IngAddressImpl _$$IngAddressImplFromJson(Map<String, dynamic> json) =>
    _$IngAddressImpl(
      address1: json['address1'] as String,
      city: json['city'] as String,
      countryCode: json['countryCode'] as String,
      firstName: json['firstName'] as String,
      fullName: json['fullName'] as String,
      id: json['id'] as String,
      lastName: json['lastName'] as String,
      postalCode: json['postalCode'] as String,
      stateCode: json['stateCode'] as String,
    );

Map<String, dynamic> _$$IngAddressImplToJson(_$IngAddressImpl instance) =>
    <String, dynamic>{
      'address1': instance.address1,
      'city': instance.city,
      'countryCode': instance.countryCode,
      'firstName': instance.firstName,
      'fullName': instance.fullName,
      'id': instance.id,
      'lastName': instance.lastName,
      'postalCode': instance.postalCode,
      'stateCode': instance.stateCode,
    };
