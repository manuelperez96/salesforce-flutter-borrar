import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_info.freezed.dart';
part 'customer_info.g.dart';

/// {@template customer_info}
/// Represents customer information.
///
/// This class includes various fields that describe the customer, including
/// their ID, name, and email address.
///
/// - `customerId`: The unique identifier of the customer.
/// - `customerName`: The name of the customer.
/// - `email`: The email address of the customer.
/// {@endtemplate}
@freezed
class CustomerInfo with _$CustomerInfo {
  /// {@macro customer_info}
  factory CustomerInfo({
    required String customerId,
    required String? customerName,
    required String? email,
  }) = _CustomerInfo;

  /// Creates an instance of [CustomerInfo] from a JSON object.
  factory CustomerInfo.fromJson(Map<String, dynamic> json) =>
      _$CustomerInfoFromJson(json);
}
