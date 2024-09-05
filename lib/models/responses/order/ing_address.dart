import 'package:freezed_annotation/freezed_annotation.dart';

part 'ing_address.freezed.dart';
part 'ing_address.g.dart';

@freezed
class IngAddress with _$IngAddress {
  factory IngAddress({
    required String address1,
    required String city,
    required String countryCode,
    required String firstName,
    required String fullName,
    required String id,
    required String lastName,
    required String postalCode,
    required String stateCode,
  }) = _IngAddress;

  factory IngAddress.fromJson(Map<String, dynamic> json) =>
      _$IngAddressFromJson(json);
}
