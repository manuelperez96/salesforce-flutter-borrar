import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sf_commerce_sdk/sf_commerce_sdk.dart';

part 'payment_instrument.freezed.dart';
part 'payment_instrument.g.dart';

/// {@template payment_instrument}
/// Represents a payment instrument used for transactions.
/// 
/// This class includes various fields that describe the payment instrument, including
/// the amount, payment method ID, and an optional payment card.
/// 
/// - `amount`: The amount associated with the payment instrument.
/// - `paymentMethodId`: The identifier of the payment method.
/// - `paymentCard`: The payment card associated with the payment instrument (optional).
/// {@endtemplate}
@freezed
class PaymentInstrument with _$PaymentInstrument {
  /// {@macro payment_instrument}
  factory PaymentInstrument({
    required double amount,
    //required String? paymentInstrumentId,
    required String paymentMethodId,
    required PaymentCard? paymentCard,
  }) = _PaymentInstrument;

  /// Creates an instance of [PaymentInstrument] from a JSON object.
  factory PaymentInstrument.fromJson(Map<String, dynamic> json) =>
      _$PaymentInstrumentFromJson(json);
}
