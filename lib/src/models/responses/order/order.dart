import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sf_commerce_sdk/sf_commerce_sdk.dart';

export 'coupon_item.dart';
export 'gift_certificate_item.dart';
export 'grouped_tax_item.dart';
export 'ing_address.dart';
export 'order_item.dart';
export 'order_price_adjustment.dart';

part 'order.freezed.dart';
part 'order.g.dart';

/// {@template order}
/// Represents an order in the system.
///
/// This class includes various fields that describe the order, including
/// its ID, customer information, billing address, payment instruments, product items,
/// and various totals and statuses.
///
/// - `adjustedMerchandiseTotalTax`: The adjusted total tax for merchandise.
/// - `adjustedShippingTotalTax`: The adjusted total tax for shipping.
/// - `billingAddress`: The billing address associated with the order.
/// - `channelType`: The type of channel (e.g., online, in-store).
/// - `confirmationStatus`: The confirmation status of the order.
/// - `couponItems`: The list of coupon items applied to the order.
/// - `createdBy`: The identifier of the user who created the order.
/// - `creationDate`: The date when the order was created.
/// - `currency`: The currency used for the order.
/// - `customerInfo`: Information about the customer associated with the order.
/// - `customerName`: The name of the customer.
/// - `exportStatus`: The export status of the order.
/// - `groupedTaxItems`: The list of grouped tax items associated with the order.
/// - `guest`: Indicates if the order was placed by a guest.
/// - `giftCertificateItems`: The list of gift certificate items applied to the order.
/// - `lastModified`: The date when the order was last modified.
/// - `merchandiseTotalTax`: The total tax for merchandise.
/// - `orderNo`: The unique identifier of the order.
/// - `orderPriceAdjustments`: The list of price adjustments applied to the order.
/// - `orderToken`: The token associated with the order.
/// - `orderTotal`: The total amount of the order.
/// - `orderViewCode`: The view code of the order.
/// - `paymentInstruments`: The list of payment instruments used in the order.
/// - `paymentStatus`: The payment status of the order.
/// - `productItems`: The list of product items in the order.
/// - `productSubTotal`: The subtotal amount for the products.
/// - `productTotal`: The total amount for the products.
/// - `shipments`: The list of shipments associated with the order.
/// - `shippingItems`: The list of shipping items in the order.
/// - `shippingStatus`: The shipping status of the order.
/// - `shippingTotal`: The total amount for shipping.
/// - `shippingTotalTax`: The total tax for shipping.
/// - `status`: The status of the order.
/// - `taxation`: The taxation type (e.g., net, gross).
/// - `taxTotal`: The total tax amount.
/// {@endtemplate}
@freezed
class Order with _$Order {
  /// {@macro order}
  factory Order({
    required int adjustedMerchandiseTotalTax,
    required double adjustedShippingTotalTax,
    required IngAddress billingAddress,
    required String channelType,
    required String confirmationStatus,
    required List<CouponItem> couponItems,
    required String createdBy,
    required DateTime creationDate,
    required String currency,
    required CustomerInfo customerInfo,
    required String customerName,
    required String exportStatus,
    required List<GroupedTaxItem> groupedTaxItems,
    required bool guest,
    required List<GiftCertificateItem> giftCertificateItems,
    required DateTime lastModified,
    required int merchandiseTotalTax,
    required String orderNo,
    required List<OrderPriceAdjustment> orderPriceAdjustments,
    required String orderToken,
    required double orderTotal,
    required String orderViewCode,
    required List<PaymentInstrument> paymentInstruments,
    required String paymentStatus,
    required List<Item> productItems,
    required double productSubTotal,
    required double productTotal,
    required List<Shipment> shipments,
    required List<ShippingItem> shippingItems,
    required String shippingStatus,
    required double shippingTotal,
    required double shippingTotalTax,
    required String status,
    required String taxation,
    required double taxTotal,
  }) = _Order;

  /// Creates an instance of [Order] from a JSON object.
  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}
