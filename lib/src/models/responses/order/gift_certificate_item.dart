import 'package:freezed_annotation/freezed_annotation.dart';

part 'gift_certificate_item.freezed.dart';
part 'gift_certificate_item.g.dart';

/// {@template gift_certificate_item}
/// Represents a gift certificate item in a basket or order.
/// 
/// This class includes various fields that describe the gift certificate item, 
/// including its amount, ID, recipient email, and shipment ID.
/// 
/// - `amount`: The amount of the gift certificate.
/// - `giftCertificateItemId`: The unique identifier of the gift 
/// certificate item.
/// - `recipientEmail`: The email address of the recipient.
/// - `shipmentId`: The ID of the shipment associated with the gift 
/// certificate item.
/// {@endtemplate}
@freezed
class GiftCertificateItem with _$GiftCertificateItem {
  /// {@macro gift_certificate_item}
  factory GiftCertificateItem({
    required int amount,
    required String giftCertificateItemId,
    required String recipientEmail,
    required String shipmentId,
  }) = _GiftCertificateItem;

  /// Creates an instance of [GiftCertificateItem] from a JSON object.
  factory GiftCertificateItem.fromJson(Map<String, dynamic> json) =>
      _$GiftCertificateItemFromJson(json);
}
