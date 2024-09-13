import 'package:freezed_annotation/freezed_annotation.dart';

export 'shipping_items.dart';
export 'shipping_method.dart';

part 'shipments.freezed.dart';
part 'shipments.g.dart';

/// {@template shipment}
/// Represents a shipment in an order.
/// 
/// This class includes various fields that describe the shipment, including
/// its ID, tax information, product totals, shipping totals, and gift status.
/// 
/// - `adjustedMerchandiseTotalTax`: The adjusted total tax for 
/// merchandise (optional).
/// - `adjustedShippingTotalTax`: The adjusted total tax for 
/// shipping (optional).
/// - `gift`: Indicates if the shipment is a gift.
/// - `merchandiseTotalTax`: The total tax for merchandise (optional).
/// - `productSubTotal`: The subtotal amount for the products (optional).
/// - `productTotal`: The total amount for the products (optional).
/// - `shipmentId`: The unique identifier of the shipment.
/// - `shipmentTotal`: The total amount of the shipment (optional).
/// - `shippingStatus`: The shipping status of the shipment (optional).
/// - `shippingTotal`: The total amount for shipping.
/// - `shippingTotalTax`: The total tax for shipping (optional).
/// - `taxTotal`: The total tax amount (optional).
/// {@endtemplate}
@freezed
class Shipment with _$Shipment {
  /// {@macro shipment}
  factory Shipment({
    required double? adjustedMerchandiseTotalTax,
    required double? adjustedShippingTotalTax,
    required bool gift,
    required double? merchandiseTotalTax,
    required double? productSubTotal,
    required double? productTotal,
    required String shipmentId,
    required double? shipmentTotal,
    required String? shippingStatus,
    required double? shippingTotal,
    required double? shippingTotalTax,
    required double? taxTotal,
  }) = _Shipment;

  /// Creates an instance of [Shipment] from a JSON object.
  factory Shipment.fromJson(Map<String, dynamic> json) =>
      _$ShipmentFromJson(json);
}
