import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sf_commerce_sdk/models/responses/customer/customer_info.dart';
import 'package:sf_commerce_sdk/models/responses/order/coupon_item.dart';
import 'package:sf_commerce_sdk/models/responses/order/gift_certificate_item.dart';
import 'package:sf_commerce_sdk/models/responses/order/grouped_tax_item.dart';
import 'package:sf_commerce_sdk/models/responses/order/ing_address.dart';
import 'package:sf_commerce_sdk/models/responses/order/order_item.dart';
import 'package:sf_commerce_sdk/models/responses/order/order_price_adjustment.dart';
import 'package:sf_commerce_sdk/models/responses/payment/payment_instrument.dart';
import 'package:sf_commerce_sdk/models/responses/shipment/shipments.dart';
import 'package:sf_commerce_sdk/models/responses/shipment/shipping_items.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@freezed
class Order with _$Order {
  factory Order({
    required int adjustedMerchandizeTotalTax,
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
    required int merchandizeTotalTax,
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

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}
