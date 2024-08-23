import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipments.freezed.dart';
part 'shipments.g.dart';

@freezed
class Shipment with _$Shipment {
  factory Shipment({
    required int? adjustedMerchandizeTotalTax,
    required int? adjustedShippingTotalTax,
    required bool gift,
    required int? merchandizeTotalTax,
    required int? productSubTotal,
    required int? productTotal,
    required String shipmentId,
    required int? shipmentTotal,
    required String? shippingStatus,
    required int? shippingTotal,
    required int? shippingTotalTax,
    required int? taxTotal,
  }) = _Shipment;

  factory Shipment.fromJson(Map<String, dynamic> json) =>
      _$ShipmentFromJson(json);
}
