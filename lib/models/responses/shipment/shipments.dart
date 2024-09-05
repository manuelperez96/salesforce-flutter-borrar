import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipments.freezed.dart';
part 'shipments.g.dart';

@freezed
class Shipment with _$Shipment {
  factory Shipment({
    required double? adjustedMerchandizeTotalTax,
    required double? adjustedShippingTotalTax,
    required bool gift,
    required double? merchandizeTotalTax,
    required double? productSubTotal,
    required double? productTotal,
    required String shipmentId,
    required double? shipmentTotal,
    required String? shippingStatus,
    required double? shippingTotal,
    required double? shippingTotalTax,
    required double? taxTotal,
  }) = _Shipment;

  factory Shipment.fromJson(Map<String, dynamic> json) =>
      _$ShipmentFromJson(json);
}
