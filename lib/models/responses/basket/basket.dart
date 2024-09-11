import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sf_commerce_sdk/models/responses/customer/customer_info.dart';
import 'package:sf_commerce_sdk/models/responses/order/coupon_item.dart';
import 'package:sf_commerce_sdk/models/responses/order/ing_address.dart';
import 'package:sf_commerce_sdk/models/responses/order/order_item.dart';
import 'package:sf_commerce_sdk/models/responses/payment/payment_instrument.dart';
import 'package:sf_commerce_sdk/models/responses/shipment/shipments.dart';
import 'package:sf_commerce_sdk/models/responses/shipment/shipping_items.dart';

part 'basket.freezed.dart';
part 'basket.g.dart';

@freezed
class Basket with _$Basket {
  factory Basket({
    required int? adjustedMerchandizeTotalTax,
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
    required int? merchandizeTotalTax,
    // required   Notes notes,
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

  factory Basket.fromJson(Map<String, dynamic> json) => _$BasketFromJson(json);
}
