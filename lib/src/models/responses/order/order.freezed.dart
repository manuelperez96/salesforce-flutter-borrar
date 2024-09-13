// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Order _$OrderFromJson(Map<String, dynamic> json) {
  return _Order.fromJson(json);
}

/// @nodoc
mixin _$Order {
  int get adjustedMerchandiseTotalTax => throw _privateConstructorUsedError;
  double get adjustedShippingTotalTax => throw _privateConstructorUsedError;
  IngAddress get billingAddress => throw _privateConstructorUsedError;
  String get channelType => throw _privateConstructorUsedError;
  String get confirmationStatus => throw _privateConstructorUsedError;
  List<CouponItem> get couponItems => throw _privateConstructorUsedError;
  String get createdBy => throw _privateConstructorUsedError;
  DateTime get creationDate => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  CustomerInfo get customerInfo => throw _privateConstructorUsedError;
  String get customerName => throw _privateConstructorUsedError;
  String get exportStatus => throw _privateConstructorUsedError;
  List<GroupedTaxItem> get groupedTaxItems =>
      throw _privateConstructorUsedError;
  bool get guest => throw _privateConstructorUsedError;
  List<GiftCertificateItem> get giftCertificateItems =>
      throw _privateConstructorUsedError;
  DateTime get lastModified => throw _privateConstructorUsedError;
  int get merchandiseTotalTax => throw _privateConstructorUsedError;
  String get orderNo => throw _privateConstructorUsedError;
  List<OrderPriceAdjustment> get orderPriceAdjustments =>
      throw _privateConstructorUsedError;
  String get orderToken => throw _privateConstructorUsedError;
  double get orderTotal => throw _privateConstructorUsedError;
  String get orderViewCode => throw _privateConstructorUsedError;
  List<PaymentInstrument> get paymentInstruments =>
      throw _privateConstructorUsedError;
  String get paymentStatus => throw _privateConstructorUsedError;
  List<Item> get productItems => throw _privateConstructorUsedError;
  double get productSubTotal => throw _privateConstructorUsedError;
  double get productTotal => throw _privateConstructorUsedError;
  List<Shipment> get shipments => throw _privateConstructorUsedError;
  List<ShippingItem> get shippingItems => throw _privateConstructorUsedError;
  String get shippingStatus => throw _privateConstructorUsedError;
  double get shippingTotal => throw _privateConstructorUsedError;
  double get shippingTotalTax => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get taxation => throw _privateConstructorUsedError;
  double get taxTotal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res, Order>;
  @useResult
  $Res call(
      {int adjustedMerchandiseTotalTax,
      double adjustedShippingTotalTax,
      IngAddress billingAddress,
      String channelType,
      String confirmationStatus,
      List<CouponItem> couponItems,
      String createdBy,
      DateTime creationDate,
      String currency,
      CustomerInfo customerInfo,
      String customerName,
      String exportStatus,
      List<GroupedTaxItem> groupedTaxItems,
      bool guest,
      List<GiftCertificateItem> giftCertificateItems,
      DateTime lastModified,
      int merchandiseTotalTax,
      String orderNo,
      List<OrderPriceAdjustment> orderPriceAdjustments,
      String orderToken,
      double orderTotal,
      String orderViewCode,
      List<PaymentInstrument> paymentInstruments,
      String paymentStatus,
      List<Item> productItems,
      double productSubTotal,
      double productTotal,
      List<Shipment> shipments,
      List<ShippingItem> shippingItems,
      String shippingStatus,
      double shippingTotal,
      double shippingTotalTax,
      String status,
      String taxation,
      double taxTotal});

  $IngAddressCopyWith<$Res> get billingAddress;
  $CustomerInfoCopyWith<$Res> get customerInfo;
}

/// @nodoc
class _$OrderCopyWithImpl<$Res, $Val extends Order>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adjustedMerchandiseTotalTax = null,
    Object? adjustedShippingTotalTax = null,
    Object? billingAddress = null,
    Object? channelType = null,
    Object? confirmationStatus = null,
    Object? couponItems = null,
    Object? createdBy = null,
    Object? creationDate = null,
    Object? currency = null,
    Object? customerInfo = null,
    Object? customerName = null,
    Object? exportStatus = null,
    Object? groupedTaxItems = null,
    Object? guest = null,
    Object? giftCertificateItems = null,
    Object? lastModified = null,
    Object? merchandiseTotalTax = null,
    Object? orderNo = null,
    Object? orderPriceAdjustments = null,
    Object? orderToken = null,
    Object? orderTotal = null,
    Object? orderViewCode = null,
    Object? paymentInstruments = null,
    Object? paymentStatus = null,
    Object? productItems = null,
    Object? productSubTotal = null,
    Object? productTotal = null,
    Object? shipments = null,
    Object? shippingItems = null,
    Object? shippingStatus = null,
    Object? shippingTotal = null,
    Object? shippingTotalTax = null,
    Object? status = null,
    Object? taxation = null,
    Object? taxTotal = null,
  }) {
    return _then(_value.copyWith(
      adjustedMerchandiseTotalTax: null == adjustedMerchandiseTotalTax
          ? _value.adjustedMerchandiseTotalTax
          : adjustedMerchandiseTotalTax // ignore: cast_nullable_to_non_nullable
              as int,
      adjustedShippingTotalTax: null == adjustedShippingTotalTax
          ? _value.adjustedShippingTotalTax
          : adjustedShippingTotalTax // ignore: cast_nullable_to_non_nullable
              as double,
      billingAddress: null == billingAddress
          ? _value.billingAddress
          : billingAddress // ignore: cast_nullable_to_non_nullable
              as IngAddress,
      channelType: null == channelType
          ? _value.channelType
          : channelType // ignore: cast_nullable_to_non_nullable
              as String,
      confirmationStatus: null == confirmationStatus
          ? _value.confirmationStatus
          : confirmationStatus // ignore: cast_nullable_to_non_nullable
              as String,
      couponItems: null == couponItems
          ? _value.couponItems
          : couponItems // ignore: cast_nullable_to_non_nullable
              as List<CouponItem>,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      creationDate: null == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      customerInfo: null == customerInfo
          ? _value.customerInfo
          : customerInfo // ignore: cast_nullable_to_non_nullable
              as CustomerInfo,
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      exportStatus: null == exportStatus
          ? _value.exportStatus
          : exportStatus // ignore: cast_nullable_to_non_nullable
              as String,
      groupedTaxItems: null == groupedTaxItems
          ? _value.groupedTaxItems
          : groupedTaxItems // ignore: cast_nullable_to_non_nullable
              as List<GroupedTaxItem>,
      guest: null == guest
          ? _value.guest
          : guest // ignore: cast_nullable_to_non_nullable
              as bool,
      giftCertificateItems: null == giftCertificateItems
          ? _value.giftCertificateItems
          : giftCertificateItems // ignore: cast_nullable_to_non_nullable
              as List<GiftCertificateItem>,
      lastModified: null == lastModified
          ? _value.lastModified
          : lastModified // ignore: cast_nullable_to_non_nullable
              as DateTime,
      merchandiseTotalTax: null == merchandiseTotalTax
          ? _value.merchandiseTotalTax
          : merchandiseTotalTax // ignore: cast_nullable_to_non_nullable
              as int,
      orderNo: null == orderNo
          ? _value.orderNo
          : orderNo // ignore: cast_nullable_to_non_nullable
              as String,
      orderPriceAdjustments: null == orderPriceAdjustments
          ? _value.orderPriceAdjustments
          : orderPriceAdjustments // ignore: cast_nullable_to_non_nullable
              as List<OrderPriceAdjustment>,
      orderToken: null == orderToken
          ? _value.orderToken
          : orderToken // ignore: cast_nullable_to_non_nullable
              as String,
      orderTotal: null == orderTotal
          ? _value.orderTotal
          : orderTotal // ignore: cast_nullable_to_non_nullable
              as double,
      orderViewCode: null == orderViewCode
          ? _value.orderViewCode
          : orderViewCode // ignore: cast_nullable_to_non_nullable
              as String,
      paymentInstruments: null == paymentInstruments
          ? _value.paymentInstruments
          : paymentInstruments // ignore: cast_nullable_to_non_nullable
              as List<PaymentInstrument>,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String,
      productItems: null == productItems
          ? _value.productItems
          : productItems // ignore: cast_nullable_to_non_nullable
              as List<Item>,
      productSubTotal: null == productSubTotal
          ? _value.productSubTotal
          : productSubTotal // ignore: cast_nullable_to_non_nullable
              as double,
      productTotal: null == productTotal
          ? _value.productTotal
          : productTotal // ignore: cast_nullable_to_non_nullable
              as double,
      shipments: null == shipments
          ? _value.shipments
          : shipments // ignore: cast_nullable_to_non_nullable
              as List<Shipment>,
      shippingItems: null == shippingItems
          ? _value.shippingItems
          : shippingItems // ignore: cast_nullable_to_non_nullable
              as List<ShippingItem>,
      shippingStatus: null == shippingStatus
          ? _value.shippingStatus
          : shippingStatus // ignore: cast_nullable_to_non_nullable
              as String,
      shippingTotal: null == shippingTotal
          ? _value.shippingTotal
          : shippingTotal // ignore: cast_nullable_to_non_nullable
              as double,
      shippingTotalTax: null == shippingTotalTax
          ? _value.shippingTotalTax
          : shippingTotalTax // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      taxation: null == taxation
          ? _value.taxation
          : taxation // ignore: cast_nullable_to_non_nullable
              as String,
      taxTotal: null == taxTotal
          ? _value.taxTotal
          : taxTotal // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IngAddressCopyWith<$Res> get billingAddress {
    return $IngAddressCopyWith<$Res>(_value.billingAddress, (value) {
      return _then(_value.copyWith(billingAddress: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomerInfoCopyWith<$Res> get customerInfo {
    return $CustomerInfoCopyWith<$Res>(_value.customerInfo, (value) {
      return _then(_value.copyWith(customerInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderImplCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$$OrderImplCopyWith(
          _$OrderImpl value, $Res Function(_$OrderImpl) then) =
      __$$OrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int adjustedMerchandiseTotalTax,
      double adjustedShippingTotalTax,
      IngAddress billingAddress,
      String channelType,
      String confirmationStatus,
      List<CouponItem> couponItems,
      String createdBy,
      DateTime creationDate,
      String currency,
      CustomerInfo customerInfo,
      String customerName,
      String exportStatus,
      List<GroupedTaxItem> groupedTaxItems,
      bool guest,
      List<GiftCertificateItem> giftCertificateItems,
      DateTime lastModified,
      int merchandiseTotalTax,
      String orderNo,
      List<OrderPriceAdjustment> orderPriceAdjustments,
      String orderToken,
      double orderTotal,
      String orderViewCode,
      List<PaymentInstrument> paymentInstruments,
      String paymentStatus,
      List<Item> productItems,
      double productSubTotal,
      double productTotal,
      List<Shipment> shipments,
      List<ShippingItem> shippingItems,
      String shippingStatus,
      double shippingTotal,
      double shippingTotalTax,
      String status,
      String taxation,
      double taxTotal});

  @override
  $IngAddressCopyWith<$Res> get billingAddress;
  @override
  $CustomerInfoCopyWith<$Res> get customerInfo;
}

/// @nodoc
class __$$OrderImplCopyWithImpl<$Res>
    extends _$OrderCopyWithImpl<$Res, _$OrderImpl>
    implements _$$OrderImplCopyWith<$Res> {
  __$$OrderImplCopyWithImpl(
      _$OrderImpl _value, $Res Function(_$OrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adjustedMerchandiseTotalTax = null,
    Object? adjustedShippingTotalTax = null,
    Object? billingAddress = null,
    Object? channelType = null,
    Object? confirmationStatus = null,
    Object? couponItems = null,
    Object? createdBy = null,
    Object? creationDate = null,
    Object? currency = null,
    Object? customerInfo = null,
    Object? customerName = null,
    Object? exportStatus = null,
    Object? groupedTaxItems = null,
    Object? guest = null,
    Object? giftCertificateItems = null,
    Object? lastModified = null,
    Object? merchandiseTotalTax = null,
    Object? orderNo = null,
    Object? orderPriceAdjustments = null,
    Object? orderToken = null,
    Object? orderTotal = null,
    Object? orderViewCode = null,
    Object? paymentInstruments = null,
    Object? paymentStatus = null,
    Object? productItems = null,
    Object? productSubTotal = null,
    Object? productTotal = null,
    Object? shipments = null,
    Object? shippingItems = null,
    Object? shippingStatus = null,
    Object? shippingTotal = null,
    Object? shippingTotalTax = null,
    Object? status = null,
    Object? taxation = null,
    Object? taxTotal = null,
  }) {
    return _then(_$OrderImpl(
      adjustedMerchandiseTotalTax: null == adjustedMerchandiseTotalTax
          ? _value.adjustedMerchandiseTotalTax
          : adjustedMerchandiseTotalTax // ignore: cast_nullable_to_non_nullable
              as int,
      adjustedShippingTotalTax: null == adjustedShippingTotalTax
          ? _value.adjustedShippingTotalTax
          : adjustedShippingTotalTax // ignore: cast_nullable_to_non_nullable
              as double,
      billingAddress: null == billingAddress
          ? _value.billingAddress
          : billingAddress // ignore: cast_nullable_to_non_nullable
              as IngAddress,
      channelType: null == channelType
          ? _value.channelType
          : channelType // ignore: cast_nullable_to_non_nullable
              as String,
      confirmationStatus: null == confirmationStatus
          ? _value.confirmationStatus
          : confirmationStatus // ignore: cast_nullable_to_non_nullable
              as String,
      couponItems: null == couponItems
          ? _value._couponItems
          : couponItems // ignore: cast_nullable_to_non_nullable
              as List<CouponItem>,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      creationDate: null == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      customerInfo: null == customerInfo
          ? _value.customerInfo
          : customerInfo // ignore: cast_nullable_to_non_nullable
              as CustomerInfo,
      customerName: null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      exportStatus: null == exportStatus
          ? _value.exportStatus
          : exportStatus // ignore: cast_nullable_to_non_nullable
              as String,
      groupedTaxItems: null == groupedTaxItems
          ? _value._groupedTaxItems
          : groupedTaxItems // ignore: cast_nullable_to_non_nullable
              as List<GroupedTaxItem>,
      guest: null == guest
          ? _value.guest
          : guest // ignore: cast_nullable_to_non_nullable
              as bool,
      giftCertificateItems: null == giftCertificateItems
          ? _value._giftCertificateItems
          : giftCertificateItems // ignore: cast_nullable_to_non_nullable
              as List<GiftCertificateItem>,
      lastModified: null == lastModified
          ? _value.lastModified
          : lastModified // ignore: cast_nullable_to_non_nullable
              as DateTime,
      merchandiseTotalTax: null == merchandiseTotalTax
          ? _value.merchandiseTotalTax
          : merchandiseTotalTax // ignore: cast_nullable_to_non_nullable
              as int,
      orderNo: null == orderNo
          ? _value.orderNo
          : orderNo // ignore: cast_nullable_to_non_nullable
              as String,
      orderPriceAdjustments: null == orderPriceAdjustments
          ? _value._orderPriceAdjustments
          : orderPriceAdjustments // ignore: cast_nullable_to_non_nullable
              as List<OrderPriceAdjustment>,
      orderToken: null == orderToken
          ? _value.orderToken
          : orderToken // ignore: cast_nullable_to_non_nullable
              as String,
      orderTotal: null == orderTotal
          ? _value.orderTotal
          : orderTotal // ignore: cast_nullable_to_non_nullable
              as double,
      orderViewCode: null == orderViewCode
          ? _value.orderViewCode
          : orderViewCode // ignore: cast_nullable_to_non_nullable
              as String,
      paymentInstruments: null == paymentInstruments
          ? _value._paymentInstruments
          : paymentInstruments // ignore: cast_nullable_to_non_nullable
              as List<PaymentInstrument>,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String,
      productItems: null == productItems
          ? _value._productItems
          : productItems // ignore: cast_nullable_to_non_nullable
              as List<Item>,
      productSubTotal: null == productSubTotal
          ? _value.productSubTotal
          : productSubTotal // ignore: cast_nullable_to_non_nullable
              as double,
      productTotal: null == productTotal
          ? _value.productTotal
          : productTotal // ignore: cast_nullable_to_non_nullable
              as double,
      shipments: null == shipments
          ? _value._shipments
          : shipments // ignore: cast_nullable_to_non_nullable
              as List<Shipment>,
      shippingItems: null == shippingItems
          ? _value._shippingItems
          : shippingItems // ignore: cast_nullable_to_non_nullable
              as List<ShippingItem>,
      shippingStatus: null == shippingStatus
          ? _value.shippingStatus
          : shippingStatus // ignore: cast_nullable_to_non_nullable
              as String,
      shippingTotal: null == shippingTotal
          ? _value.shippingTotal
          : shippingTotal // ignore: cast_nullable_to_non_nullable
              as double,
      shippingTotalTax: null == shippingTotalTax
          ? _value.shippingTotalTax
          : shippingTotalTax // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      taxation: null == taxation
          ? _value.taxation
          : taxation // ignore: cast_nullable_to_non_nullable
              as String,
      taxTotal: null == taxTotal
          ? _value.taxTotal
          : taxTotal // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderImpl implements _Order {
  _$OrderImpl(
      {required this.adjustedMerchandiseTotalTax,
      required this.adjustedShippingTotalTax,
      required this.billingAddress,
      required this.channelType,
      required this.confirmationStatus,
      required final List<CouponItem> couponItems,
      required this.createdBy,
      required this.creationDate,
      required this.currency,
      required this.customerInfo,
      required this.customerName,
      required this.exportStatus,
      required final List<GroupedTaxItem> groupedTaxItems,
      required this.guest,
      required final List<GiftCertificateItem> giftCertificateItems,
      required this.lastModified,
      required this.merchandiseTotalTax,
      required this.orderNo,
      required final List<OrderPriceAdjustment> orderPriceAdjustments,
      required this.orderToken,
      required this.orderTotal,
      required this.orderViewCode,
      required final List<PaymentInstrument> paymentInstruments,
      required this.paymentStatus,
      required final List<Item> productItems,
      required this.productSubTotal,
      required this.productTotal,
      required final List<Shipment> shipments,
      required final List<ShippingItem> shippingItems,
      required this.shippingStatus,
      required this.shippingTotal,
      required this.shippingTotalTax,
      required this.status,
      required this.taxation,
      required this.taxTotal})
      : _couponItems = couponItems,
        _groupedTaxItems = groupedTaxItems,
        _giftCertificateItems = giftCertificateItems,
        _orderPriceAdjustments = orderPriceAdjustments,
        _paymentInstruments = paymentInstruments,
        _productItems = productItems,
        _shipments = shipments,
        _shippingItems = shippingItems;

  factory _$OrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderImplFromJson(json);

  @override
  final int adjustedMerchandiseTotalTax;
  @override
  final double adjustedShippingTotalTax;
  @override
  final IngAddress billingAddress;
  @override
  final String channelType;
  @override
  final String confirmationStatus;
  final List<CouponItem> _couponItems;
  @override
  List<CouponItem> get couponItems {
    if (_couponItems is EqualUnmodifiableListView) return _couponItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_couponItems);
  }

  @override
  final String createdBy;
  @override
  final DateTime creationDate;
  @override
  final String currency;
  @override
  final CustomerInfo customerInfo;
  @override
  final String customerName;
  @override
  final String exportStatus;
  final List<GroupedTaxItem> _groupedTaxItems;
  @override
  List<GroupedTaxItem> get groupedTaxItems {
    if (_groupedTaxItems is EqualUnmodifiableListView) return _groupedTaxItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groupedTaxItems);
  }

  @override
  final bool guest;
  final List<GiftCertificateItem> _giftCertificateItems;
  @override
  List<GiftCertificateItem> get giftCertificateItems {
    if (_giftCertificateItems is EqualUnmodifiableListView)
      return _giftCertificateItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_giftCertificateItems);
  }

  @override
  final DateTime lastModified;
  @override
  final int merchandiseTotalTax;
  @override
  final String orderNo;
  final List<OrderPriceAdjustment> _orderPriceAdjustments;
  @override
  List<OrderPriceAdjustment> get orderPriceAdjustments {
    if (_orderPriceAdjustments is EqualUnmodifiableListView)
      return _orderPriceAdjustments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderPriceAdjustments);
  }

  @override
  final String orderToken;
  @override
  final double orderTotal;
  @override
  final String orderViewCode;
  final List<PaymentInstrument> _paymentInstruments;
  @override
  List<PaymentInstrument> get paymentInstruments {
    if (_paymentInstruments is EqualUnmodifiableListView)
      return _paymentInstruments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paymentInstruments);
  }

  @override
  final String paymentStatus;
  final List<Item> _productItems;
  @override
  List<Item> get productItems {
    if (_productItems is EqualUnmodifiableListView) return _productItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productItems);
  }

  @override
  final double productSubTotal;
  @override
  final double productTotal;
  final List<Shipment> _shipments;
  @override
  List<Shipment> get shipments {
    if (_shipments is EqualUnmodifiableListView) return _shipments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shipments);
  }

  final List<ShippingItem> _shippingItems;
  @override
  List<ShippingItem> get shippingItems {
    if (_shippingItems is EqualUnmodifiableListView) return _shippingItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shippingItems);
  }

  @override
  final String shippingStatus;
  @override
  final double shippingTotal;
  @override
  final double shippingTotalTax;
  @override
  final String status;
  @override
  final String taxation;
  @override
  final double taxTotal;

  @override
  String toString() {
    return 'Order(adjustedMerchandiseTotalTax: $adjustedMerchandiseTotalTax, adjustedShippingTotalTax: $adjustedShippingTotalTax, billingAddress: $billingAddress, channelType: $channelType, confirmationStatus: $confirmationStatus, couponItems: $couponItems, createdBy: $createdBy, creationDate: $creationDate, currency: $currency, customerInfo: $customerInfo, customerName: $customerName, exportStatus: $exportStatus, groupedTaxItems: $groupedTaxItems, guest: $guest, giftCertificateItems: $giftCertificateItems, lastModified: $lastModified, merchandiseTotalTax: $merchandiseTotalTax, orderNo: $orderNo, orderPriceAdjustments: $orderPriceAdjustments, orderToken: $orderToken, orderTotal: $orderTotal, orderViewCode: $orderViewCode, paymentInstruments: $paymentInstruments, paymentStatus: $paymentStatus, productItems: $productItems, productSubTotal: $productSubTotal, productTotal: $productTotal, shipments: $shipments, shippingItems: $shippingItems, shippingStatus: $shippingStatus, shippingTotal: $shippingTotal, shippingTotalTax: $shippingTotalTax, status: $status, taxation: $taxation, taxTotal: $taxTotal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderImpl &&
            (identical(other.adjustedMerchandiseTotalTax, adjustedMerchandiseTotalTax) ||
                other.adjustedMerchandiseTotalTax ==
                    adjustedMerchandiseTotalTax) &&
            (identical(other.adjustedShippingTotalTax, adjustedShippingTotalTax) ||
                other.adjustedShippingTotalTax == adjustedShippingTotalTax) &&
            (identical(other.billingAddress, billingAddress) ||
                other.billingAddress == billingAddress) &&
            (identical(other.channelType, channelType) ||
                other.channelType == channelType) &&
            (identical(other.confirmationStatus, confirmationStatus) ||
                other.confirmationStatus == confirmationStatus) &&
            const DeepCollectionEquality()
                .equals(other._couponItems, _couponItems) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.customerInfo, customerInfo) ||
                other.customerInfo == customerInfo) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.exportStatus, exportStatus) ||
                other.exportStatus == exportStatus) &&
            const DeepCollectionEquality()
                .equals(other._groupedTaxItems, _groupedTaxItems) &&
            (identical(other.guest, guest) || other.guest == guest) &&
            const DeepCollectionEquality()
                .equals(other._giftCertificateItems, _giftCertificateItems) &&
            (identical(other.lastModified, lastModified) ||
                other.lastModified == lastModified) &&
            (identical(other.merchandiseTotalTax, merchandiseTotalTax) ||
                other.merchandiseTotalTax == merchandiseTotalTax) &&
            (identical(other.orderNo, orderNo) || other.orderNo == orderNo) &&
            const DeepCollectionEquality()
                .equals(other._orderPriceAdjustments, _orderPriceAdjustments) &&
            (identical(other.orderToken, orderToken) ||
                other.orderToken == orderToken) &&
            (identical(other.orderTotal, orderTotal) ||
                other.orderTotal == orderTotal) &&
            (identical(other.orderViewCode, orderViewCode) ||
                other.orderViewCode == orderViewCode) &&
            const DeepCollectionEquality()
                .equals(other._paymentInstruments, _paymentInstruments) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            const DeepCollectionEquality()
                .equals(other._productItems, _productItems) &&
            (identical(other.productSubTotal, productSubTotal) ||
                other.productSubTotal == productSubTotal) &&
            (identical(other.productTotal, productTotal) ||
                other.productTotal == productTotal) &&
            const DeepCollectionEquality().equals(other._shipments, _shipments) &&
            const DeepCollectionEquality().equals(other._shippingItems, _shippingItems) &&
            (identical(other.shippingStatus, shippingStatus) || other.shippingStatus == shippingStatus) &&
            (identical(other.shippingTotal, shippingTotal) || other.shippingTotal == shippingTotal) &&
            (identical(other.shippingTotalTax, shippingTotalTax) || other.shippingTotalTax == shippingTotalTax) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.taxation, taxation) || other.taxation == taxation) &&
            (identical(other.taxTotal, taxTotal) || other.taxTotal == taxTotal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        adjustedMerchandiseTotalTax,
        adjustedShippingTotalTax,
        billingAddress,
        channelType,
        confirmationStatus,
        const DeepCollectionEquality().hash(_couponItems),
        createdBy,
        creationDate,
        currency,
        customerInfo,
        customerName,
        exportStatus,
        const DeepCollectionEquality().hash(_groupedTaxItems),
        guest,
        const DeepCollectionEquality().hash(_giftCertificateItems),
        lastModified,
        merchandiseTotalTax,
        orderNo,
        const DeepCollectionEquality().hash(_orderPriceAdjustments),
        orderToken,
        orderTotal,
        orderViewCode,
        const DeepCollectionEquality().hash(_paymentInstruments),
        paymentStatus,
        const DeepCollectionEquality().hash(_productItems),
        productSubTotal,
        productTotal,
        const DeepCollectionEquality().hash(_shipments),
        const DeepCollectionEquality().hash(_shippingItems),
        shippingStatus,
        shippingTotal,
        shippingTotalTax,
        status,
        taxation,
        taxTotal
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      __$$OrderImplCopyWithImpl<_$OrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderImplToJson(
      this,
    );
  }
}

abstract class _Order implements Order {
  factory _Order(
      {required final int adjustedMerchandiseTotalTax,
      required final double adjustedShippingTotalTax,
      required final IngAddress billingAddress,
      required final String channelType,
      required final String confirmationStatus,
      required final List<CouponItem> couponItems,
      required final String createdBy,
      required final DateTime creationDate,
      required final String currency,
      required final CustomerInfo customerInfo,
      required final String customerName,
      required final String exportStatus,
      required final List<GroupedTaxItem> groupedTaxItems,
      required final bool guest,
      required final List<GiftCertificateItem> giftCertificateItems,
      required final DateTime lastModified,
      required final int merchandiseTotalTax,
      required final String orderNo,
      required final List<OrderPriceAdjustment> orderPriceAdjustments,
      required final String orderToken,
      required final double orderTotal,
      required final String orderViewCode,
      required final List<PaymentInstrument> paymentInstruments,
      required final String paymentStatus,
      required final List<Item> productItems,
      required final double productSubTotal,
      required final double productTotal,
      required final List<Shipment> shipments,
      required final List<ShippingItem> shippingItems,
      required final String shippingStatus,
      required final double shippingTotal,
      required final double shippingTotalTax,
      required final String status,
      required final String taxation,
      required final double taxTotal}) = _$OrderImpl;

  factory _Order.fromJson(Map<String, dynamic> json) = _$OrderImpl.fromJson;

  @override
  int get adjustedMerchandiseTotalTax;
  @override
  double get adjustedShippingTotalTax;
  @override
  IngAddress get billingAddress;
  @override
  String get channelType;
  @override
  String get confirmationStatus;
  @override
  List<CouponItem> get couponItems;
  @override
  String get createdBy;
  @override
  DateTime get creationDate;
  @override
  String get currency;
  @override
  CustomerInfo get customerInfo;
  @override
  String get customerName;
  @override
  String get exportStatus;
  @override
  List<GroupedTaxItem> get groupedTaxItems;
  @override
  bool get guest;
  @override
  List<GiftCertificateItem> get giftCertificateItems;
  @override
  DateTime get lastModified;
  @override
  int get merchandiseTotalTax;
  @override
  String get orderNo;
  @override
  List<OrderPriceAdjustment> get orderPriceAdjustments;
  @override
  String get orderToken;
  @override
  double get orderTotal;
  @override
  String get orderViewCode;
  @override
  List<PaymentInstrument> get paymentInstruments;
  @override
  String get paymentStatus;
  @override
  List<Item> get productItems;
  @override
  double get productSubTotal;
  @override
  double get productTotal;
  @override
  List<Shipment> get shipments;
  @override
  List<ShippingItem> get shippingItems;
  @override
  String get shippingStatus;
  @override
  double get shippingTotal;
  @override
  double get shippingTotalTax;
  @override
  String get status;
  @override
  String get taxation;
  @override
  double get taxTotal;
  @override
  @JsonKey(ignore: true)
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
