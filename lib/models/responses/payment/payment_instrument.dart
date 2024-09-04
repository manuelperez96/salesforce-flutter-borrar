import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sf_commerce_sdk/models/responses/payment/payment_card.dart';

part 'payment_instrument.freezed.dart';
part 'payment_instrument.g.dart';

@freezed
class PaymentInstrument with _$PaymentInstrument {
  factory PaymentInstrument({
    required double amount,
    required String paymentInstrumentId,
    required String paymentMethodId,
    required PaymentCard? paymentCard,
  }) = _PaymentInstrument;

  factory PaymentInstrument.fromJson(Map<String, dynamic> json) =>
      _$PaymentInstrumentFromJson(json);
}
