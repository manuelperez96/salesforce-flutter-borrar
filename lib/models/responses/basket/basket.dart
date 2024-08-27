import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sf_commerce_sdk/models/responses/basket/customer_info.dart';
import 'package:sf_commerce_sdk/models/responses/basket/shipments.dart';
import 'package:sf_commerce_sdk/models/responses/basket/shipping_items.dart';

part 'basket.freezed.dart';
part 'basket.g.dart';

@freezed
class Basket with _$Basket {
  factory Basket({
    required int? adjustedMerchandizeTotalTax,
    required int? adjustedShippingTotalTax,
    required bool agentBasket,
    required String basketId,
    required String channelType,
    required DateTime creationDate,
    required String currency,
    required CustomerInfo customerInfo,
    required DateTime lastModified,
    required int? merchandizeTotalTax,
    // required   Notes notes,
    required int? orderTotal,
    required int productSubTotal,
    required int productTotal,
    required List<Shipment> shipments,
    required List<ShippingItem> shippingItems,
    required int? shippingTotal,
    required int? shippingTotalTax,
    required String taxation,
    required int? taxTotal,
  }) = _Basket;

  factory Basket.fromJson(Map<String, dynamic> json) => _$BasketFromJson(json);
}
