import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_card.freezed.dart';
part 'payment_card.g.dart';

/// {@template payment_card}
/// Represents a payment card used for transactions.
/// 
/// This class includes various fields that describe the payment card, including
/// its expiration date, issue number, masked number, holder name, and card type.
/// 
/// - `expirationYear`: The year the card expires.
/// - `expirationMonth`: The month the card expires.
/// - `validFromMonth`: The month the card is valid from.
/// - `validFromYear`: The year the card is valid from.
/// - `issueNumber`: The issue number of the card.
/// - `maskedNumber`: The masked number of the card (e.g., "**** **** **** 1234").
/// - `holder`: The name of the cardholder.
/// - `cardType`: The type of the card (e.g., "Visa", "MasterCard").
/// {@endtemplate}
@freezed
class PaymentCard with _$PaymentCard {
  /// {@macro payment_card}
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

  /// Creates an instance of [PaymentCard] from a JSON object.
  factory PaymentCard.fromJson(Map<String, dynamic> json) =>
      _$PaymentCardFromJson(json);
}
