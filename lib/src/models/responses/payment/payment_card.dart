import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_card.freezed.dart';
part 'payment_card.g.dart';

@freezed
class PaymentCard with _$PaymentCard {
  factory PaymentCard({
    required int expirationYear,
    required int expirationMonth,
    required int validFromMonth,
    required int validFromYear,
    required String issueNumber,
    required String maskedNumber,
    required String holder,
    required String cardType,
  }) = _PaymentCard;

  factory PaymentCard.fromJson(Map<String, dynamic> json) =>
      _$PaymentCardFromJson(json);
}
