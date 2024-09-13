import 'package:freezed_annotation/freezed_annotation.dart';

part 'ing_address.freezed.dart';
part 'ing_address.g.dart';

/// {@template ing_address}
/// Represents an address used for billing or shipping purposes.
/// 
/// This class includes various fields that describe the address, including
/// the street address, city, country code, first name, last name, postal code,
/// and state code.
/// 
/// - `address1`: The street address.
/// - `city`: The city of the address.
/// - `countryCode`: The country code of the address.
/// - `firstName`: The first name of the person associated with the address.
/// - `lastName`: The last name of the person associated with the address.
/// - `postalCode`: The postal code of the address.
/// - `stateCode`: The state code of the address.
/// {@endtemplate}
@freezed
class IngAddress with _$IngAddress {
  /// {@macro ing_address}
  factory IngAddress({
    required String address1,
    required String city,
    required String countryCode,
    required String firstName,
    required String lastName,
    required String postalCode,
    required String stateCode,
  }) = _IngAddress;

  /// Creates an instance of [IngAddress] from a JSON object.
  factory IngAddress.fromJson(Map<String, dynamic> json) =>
      _$IngAddressFromJson(json);
}
