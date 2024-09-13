import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sf_commerce_sdk/sf_commerce_sdk.dart';

export 'product_item.dart';

part 'basket.freezed.dart';
part 'basket.g.dart';

@freezed
/// {@template basket}
/// Represents a shopping basket containing various items, payment instruments,
/// and shipping details.
/// 
/// This class includes various fields that describe the basket, including
/// its ID, creation date, customer information, and totals for merchandise,
/// shipping, and taxes.
/// 
/// - `adjustedMerchandiseTotalTax`: The adjusted total tax for merchandise.
/// - `adjustedShippingTotalTax`: The adjusted total tax for shipping.
/// - `agentBasket`: Indicates if the basket is an agent basket.
/// - `billingAddress`: The billing address associated with the basket.
/// - `basketId`: The unique identifier of the basket.
/// - `channelType`: The type of channel (e.g., online, in-store).
/// - `couponItems`: The list of coupon items applied to the basket.
/// - `creationDate`: The date when the basket was created.
/// - `currency`: The currency used for the basket.
/// - `customerInfo`: Information about the customer associated with the basket.
/// - `lastModified`: The date when the basket was last modified.
/// - `merchandiseTotalTax`: The total tax for merchandise.
/// - `orderTotal`: The total amount of the order.
/// - `paymentInstruments`: The list of payment instruments used in the basket.
/// - `productItems`: The list of product items in the basket.
/// - `productSubTotal`: The subtotal amount for the products.
/// - `productTotal`: The total amount for the products.
/// - `shipments`: The list of shipments associated with the basket.
/// - `shippingItems`: The list of shipping items in the basket.
/// - `shippingTotal`: The total amount for shipping.
/// - `shippingTotalTax`: The total tax for shipping.
/// - `taxation`: The taxation type (e.g., net, gross).
/// - `taxTotal`: The total tax amount.
/// {@endtemplate}
class Basket with _$Basket {
  /// {@macro basket}
  factory Basket({
    required int? adjustedMerchandiseTotalTax,
    required int? adjustedShippingTotalTax,
    required bool agentBasket,
    required IngAddress? billingAddress,
    required String basketId,
    required String channelType,
    required List<CouponItem>? couponItems,
    required DateTime creationDate,
    required String currency,
    required CustomerInfo customerInfo,
    required DateTime lastModified,
    required int? merchandiseTotalTax,
    required double? orderTotal,
    required List<PaymentInstrument>? paymentInstruments,
    required List<Item>? productItems,
    required double productSubTotal,
    required double productTotal,
    required List<Shipment> shipments,
    required List<ShippingItem> shippingItems,
    required double? shippingTotal,
    required double? shippingTotalTax,
    required String taxation,
    required double? taxTotal,
  }) = _Basket;

  /// Creates an instance of [Basket] from a JSON object.
  factory Basket.fromJson(Map<String, dynamic> json) => _$BasketFromJson(json);
}
