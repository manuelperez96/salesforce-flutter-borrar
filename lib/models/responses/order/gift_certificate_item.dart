import 'package:freezed_annotation/freezed_annotation.dart';

part 'gift_certificate_item.freezed.dart';
part 'gift_certificate_item.g.dart';

@freezed
class GiftCertificateItem with _$GiftCertificateItem {
  factory GiftCertificateItem({
    required int amount,
    required String giftCertificateItemId,
    required String recipientEmail,
    required String shipmentId,
  }) = _GiftCertificateItem;

  factory GiftCertificateItem.fromJson(Map<String, dynamic> json) =>
      _$GiftCertificateItemFromJson(json);
}
