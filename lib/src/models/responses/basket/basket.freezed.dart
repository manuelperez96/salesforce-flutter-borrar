// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basket.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Basket _$BasketFromJson(Map<String, dynamic> json) {
  return _Basket.fromJson(json);
}

/// @nodoc
mixin _$Basket {
  int? get adjustedMerchandiseTotalTax => throw _privateConstructorUsedError;
  int? get adjustedShippingTotalTax => throw _privateConstructorUsedError;
  bool get agentBasket => throw _privateConstructorUsedError;
  IngAddress? get billingAddress => throw _privateConstructorUsedError;
  String get basketId => throw _privateConstructorUsedError;
  String get channelType => throw _privateConstructorUsedError;
  List<CouponItem>? get couponItems => throw _privateConstructorUsedError;
  DateTime get creationDate => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  CustomerInfo get customerInfo => throw _privateConstructorUsedError;
  DateTime get lastModified => throw _privateConstructorUsedError;
  int? get merchandiseTotalTax => throw _privateConstructorUsedError;
  double? get orderTotal => throw _privateConstructorUsedError;
  List<PaymentInstrument>? get paymentInstruments =>
      throw _privateConstructorUsedError;
  List<Item>? get productItems => throw _privateConstructorUsedError;
  double get productSubTotal => throw _privateConstructorUsedError;
  double get productTotal => throw _privateConstructorUsedError;
  List<Shipment> get shipments => throw _privateConstructorUsedError;
  List<ShippingItem> get shippingItems => throw _privateConstructorUsedError;
  double? get shippingTotal => throw _privateConstructorUsedError;
  double? get shippingTotalTax => throw _privateConstructorUsedError;
  String get taxation => throw _privateConstructorUsedError;
  double? get taxTotal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BasketCopyWith<Basket> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasketCopyWith<$Res> {
  factory $BasketCopyWith(Basket value, $Res Function(Basket) then) =
      _$BasketCopyWithImpl<$Res, Basket>;
  @useResult
  $Res call(
      {int? adjustedMerchandiseTotalTax,
      int? adjustedShippingTotalTax,
      bool agentBasket,
      IngAddress? billingAddress,
      String basketId,
      String channelType,
      List<CouponItem>? couponItems,
      DateTime creationDate,
      String currency,
      CustomerInfo customerInfo,
      DateTime lastModified,
      int? merchandiseTotalTax,
      double? orderTotal,
      List<PaymentInstrument>? paymentInstruments,
      List<Item>? productItems,
      double productSubTotal,
      double productTotal,
      List<Shipment> shipments,
      List<ShippingItem> shippingItems,
      double? shippingTotal,
      double? shippingTotalTax,
      String taxation,
      double? taxTotal});

  $IngAddressCopyWith<$Res>? get billingAddress;
  $CustomerInfoCopyWith<$Res> get customerInfo;
}

/// @nodoc
class _$BasketCopyWithImpl<$Res, $Val extends Basket>
    implements $BasketCopyWith<$Res> {
  _$BasketCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adjustedMerchandiseTotalTax = freezed,
    Object? adjustedShippingTotalTax = freezed,
    Object? agentBasket = null,
    Object? billingAddress = freezed,
    Object? basketId = null,
    Object? channelType = null,
    Object? couponItems = freezed,
    Object? creationDate = null,
    Object? currency = null,
    Object? customerInfo = null,
    Object? lastModified = null,
    Object? merchandiseTotalTax = freezed,
    Object? orderTotal = freezed,
    Object? paymentInstruments = freezed,
    Object? productItems = freezed,
    Object? productSubTotal = null,
    Object? productTotal = null,
    Object? shipments = null,
    Object? shippingItems = null,
    Object? shippingTotal = freezed,
    Object? shippingTotalTax = freezed,
    Object? taxation = null,
    Object? taxTotal = freezed,
  }) {
    return _then(_value.copyWith(
      adjustedMerchandiseTotalTax: freezed == adjustedMerchandiseTotalTax
          ? _value.adjustedMerchandiseTotalTax
          : adjustedMerchandiseTotalTax // ignore: cast_nullable_to_non_nullable
              as int?,
      adjustedShippingTotalTax: freezed == adjustedShippingTotalTax
          ? _value.adjustedShippingTotalTax
          : adjustedShippingTotalTax // ignore: cast_nullable_to_non_nullable
              as int?,
      agentBasket: null == agentBasket
          ? _value.agentBasket
          : agentBasket // ignore: cast_nullable_to_non_nullable
              as bool,
      billingAddress: freezed == billingAddress
          ? _value.billingAddress
          : billingAddress // ignore: cast_nullable_to_non_nullable
              as IngAddress?,
      basketId: null == basketId
          ? _value.basketId
          : basketId // ignore: cast_nullable_to_non_nullable
              as String,
      channelType: null == channelType
          ? _value.channelType
          : channelType // ignore: cast_nullable_to_non_nullable
              as String,
      couponItems: freezed == couponItems
          ? _value.couponItems
          : couponItems // ignore: cast_nullable_to_non_nullable
              as List<CouponItem>?,
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
      lastModified: null == lastModified
          ? _value.lastModified
          : lastModified // ignore: cast_nullable_to_non_nullable
              as DateTime,
      merchandiseTotalTax: freezed == merchandiseTotalTax
          ? _value.merchandiseTotalTax
          : merchandiseTotalTax // ignore: cast_nullable_to_non_nullable
              as int?,
      orderTotal: freezed == orderTotal
          ? _value.orderTotal
          : orderTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      paymentInstruments: freezed == paymentInstruments
          ? _value.paymentInstruments
          : paymentInstruments // ignore: cast_nullable_to_non_nullable
              as List<PaymentInstrument>?,
      productItems: freezed == productItems
          ? _value.productItems
          : productItems // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
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
      shippingTotal: freezed == shippingTotal
          ? _value.shippingTotal
          : shippingTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      shippingTotalTax: freezed == shippingTotalTax
          ? _value.shippingTotalTax
          : shippingTotalTax // ignore: cast_nullable_to_non_nullable
              as double?,
      taxation: null == taxation
          ? _value.taxation
          : taxation // ignore: cast_nullable_to_non_nullable
              as String,
      taxTotal: freezed == taxTotal
          ? _value.taxTotal
          : taxTotal // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IngAddressCopyWith<$Res>? get billingAddress {
    if (_value.billingAddress == null) {
      return null;
    }

    return $IngAddressCopyWith<$Res>(_value.billingAddress!, (value) {
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
abstract class _$$BasketImplCopyWith<$Res> implements $BasketCopyWith<$Res> {
  factory _$$BasketImplCopyWith(
          _$BasketImpl value, $Res Function(_$BasketImpl) then) =
      __$$BasketImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? adjustedMerchandiseTotalTax,
      int? adjustedShippingTotalTax,
      bool agentBasket,
      IngAddress? billingAddress,
      String basketId,
      String channelType,
      List<CouponItem>? couponItems,
      DateTime creationDate,
      String currency,
      CustomerInfo customerInfo,
      DateTime lastModified,
      int? merchandiseTotalTax,
      double? orderTotal,
      List<PaymentInstrument>? paymentInstruments,
      List<Item>? productItems,
      double productSubTotal,
      double productTotal,
      List<Shipment> shipments,
      List<ShippingItem> shippingItems,
      double? shippingTotal,
      double? shippingTotalTax,
      String taxation,
      double? taxTotal});

  @override
  $IngAddressCopyWith<$Res>? get billingAddress;
  @override
  $CustomerInfoCopyWith<$Res> get customerInfo;
}

/// @nodoc
class __$$BasketImplCopyWithImpl<$Res>
    extends _$BasketCopyWithImpl<$Res, _$BasketImpl>
    implements _$$BasketImplCopyWith<$Res> {
  __$$BasketImplCopyWithImpl(
      _$BasketImpl _value, $Res Function(_$BasketImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adjustedMerchandiseTotalTax = freezed,
    Object? adjustedShippingTotalTax = freezed,
    Object? agentBasket = null,
    Object? billingAddress = freezed,
    Object? basketId = null,
    Object? channelType = null,
    Object? couponItems = freezed,
    Object? creationDate = null,
    Object? currency = null,
    Object? customerInfo = null,
    Object? lastModified = null,
    Object? merchandiseTotalTax = freezed,
    Object? orderTotal = freezed,
    Object? paymentInstruments = freezed,
    Object? productItems = freezed,
    Object? productSubTotal = null,
    Object? productTotal = null,
    Object? shipments = null,
    Object? shippingItems = null,
    Object? shippingTotal = freezed,
    Object? shippingTotalTax = freezed,
    Object? taxation = null,
    Object? taxTotal = freezed,
  }) {
    return _then(_$BasketImpl(
      adjustedMerchandiseTotalTax: freezed == adjustedMerchandiseTotalTax
          ? _value.adjustedMerchandiseTotalTax
          : adjustedMerchandiseTotalTax // ignore: cast_nullable_to_non_nullable
              as int?,
      adjustedShippingTotalTax: freezed == adjustedShippingTotalTax
          ? _value.adjustedShippingTotalTax
          : adjustedShippingTotalTax // ignore: cast_nullable_to_non_nullable
              as int?,
      agentBasket: null == agentBasket
          ? _value.agentBasket
          : agentBasket // ignore: cast_nullable_to_non_nullable
              as bool,
      billingAddress: freezed == billingAddress
          ? _value.billingAddress
          : billingAddress // ignore: cast_nullable_to_non_nullable
              as IngAddress?,
      basketId: null == basketId
          ? _value.basketId
          : basketId // ignore: cast_nullable_to_non_nullable
              as String,
      channelType: null == channelType
          ? _value.channelType
          : channelType // ignore: cast_nullable_to_non_nullable
              as String,
      couponItems: freezed == couponItems
          ? _value._couponItems
          : couponItems // ignore: cast_nullable_to_non_nullable
              as List<CouponItem>?,
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
      lastModified: null == lastModified
          ? _value.lastModified
          : lastModified // ignore: cast_nullable_to_non_nullable
              as DateTime,
      merchandiseTotalTax: freezed == merchandiseTotalTax
          ? _value.merchandiseTotalTax
          : merchandiseTotalTax // ignore: cast_nullable_to_non_nullable
              as int?,
      orderTotal: freezed == orderTotal
          ? _value.orderTotal
          : orderTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      paymentInstruments: freezed == paymentInstruments
          ? _value._paymentInstruments
          : paymentInstruments // ignore: cast_nullable_to_non_nullable
              as List<PaymentInstrument>?,
      productItems: freezed == productItems
          ? _value._productItems
          : productItems // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
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
      shippingTotal: freezed == shippingTotal
          ? _value.shippingTotal
          : shippingTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      shippingTotalTax: freezed == shippingTotalTax
          ? _value.shippingTotalTax
          : shippingTotalTax // ignore: cast_nullable_to_non_nullable
              as double?,
      taxation: null == taxation
          ? _value.taxation
          : taxation // ignore: cast_nullable_to_non_nullable
              as String,
      taxTotal: freezed == taxTotal
          ? _value.taxTotal
          : taxTotal // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BasketImpl implements _Basket {
  _$BasketImpl(
      {required this.adjustedMerchandiseTotalTax,
      required this.adjustedShippingTotalTax,
      required this.agentBasket,
      required this.billingAddress,
      required this.basketId,
      required this.channelType,
      required final List<CouponItem>? couponItems,
      required this.creationDate,
      required this.currency,
      required this.customerInfo,
      required this.lastModified,
      required this.merchandiseTotalTax,
      required this.orderTotal,
      required final List<PaymentInstrument>? paymentInstruments,
      required final List<Item>? productItems,
      required this.productSubTotal,
      required this.productTotal,
      required final List<Shipment> shipments,
      required final List<ShippingItem> shippingItems,
      required this.shippingTotal,
      required this.shippingTotalTax,
      required this.taxation,
      required this.taxTotal})
      : _couponItems = couponItems,
        _paymentInstruments = paymentInstruments,
        _productItems = productItems,
        _shipments = shipments,
        _shippingItems = shippingItems;

  factory _$BasketImpl.fromJson(Map<String, dynamic> json) =>
      _$$BasketImplFromJson(json);

  @override
  final int? adjustedMerchandiseTotalTax;
  @override
  final int? adjustedShippingTotalTax;
  @override
  final bool agentBasket;
  @override
  final IngAddress? billingAddress;
  @override
  final String basketId;
  @override
  final String channelType;
  final List<CouponItem>? _couponItems;
  @override
  List<CouponItem>? get couponItems {
    final value = _couponItems;
    if (value == null) return null;
    if (_couponItems is EqualUnmodifiableListView) return _couponItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DateTime creationDate;
  @override
  final String currency;
  @override
  final CustomerInfo customerInfo;
  @override
  final DateTime lastModified;
  @override
  final int? merchandiseTotalTax;
  @override
  final double? orderTotal;
  final List<PaymentInstrument>? _paymentInstruments;
  @override
  List<PaymentInstrument>? get paymentInstruments {
    final value = _paymentInstruments;
    if (value == null) return null;
    if (_paymentInstruments is EqualUnmodifiableListView)
      return _paymentInstruments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Item>? _productItems;
  @override
  List<Item>? get productItems {
    final value = _productItems;
    if (value == null) return null;
    if (_productItems is EqualUnmodifiableListView) return _productItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
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
  final double? shippingTotal;
  @override
  final double? shippingTotalTax;
  @override
  final String taxation;
  @override
  final double? taxTotal;

  @override
  String toString() {
    return 'Basket(adjustedMerchandiseTotalTax: $adjustedMerchandiseTotalTax, adjustedShippingTotalTax: $adjustedShippingTotalTax, agentBasket: $agentBasket, billingAddress: $billingAddress, basketId: $basketId, channelType: $channelType, couponItems: $couponItems, creationDate: $creationDate, currency: $currency, customerInfo: $customerInfo, lastModified: $lastModified, merchandiseTotalTax: $merchandiseTotalTax, orderTotal: $orderTotal, paymentInstruments: $paymentInstruments, productItems: $productItems, productSubTotal: $productSubTotal, productTotal: $productTotal, shipments: $shipments, shippingItems: $shippingItems, shippingTotal: $shippingTotal, shippingTotalTax: $shippingTotalTax, taxation: $taxation, taxTotal: $taxTotal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasketImpl &&
            (identical(other.adjustedMerchandiseTotalTax,
                    adjustedMerchandiseTotalTax) ||
                other.adjustedMerchandiseTotalTax ==
                    adjustedMerchandiseTotalTax) &&
            (identical(
                    other.adjustedShippingTotalTax, adjustedShippingTotalTax) ||
                other.adjustedShippingTotalTax == adjustedShippingTotalTax) &&
            (identical(other.agentBasket, agentBasket) ||
                other.agentBasket == agentBasket) &&
            (identical(other.billingAddress, billingAddress) ||
                other.billingAddress == billingAddress) &&
            (identical(other.basketId, basketId) ||
                other.basketId == basketId) &&
            (identical(other.channelType, channelType) ||
                other.channelType == channelType) &&
            const DeepCollectionEquality()
                .equals(other._couponItems, _couponItems) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.customerInfo, customerInfo) ||
                other.customerInfo == customerInfo) &&
            (identical(other.lastModified, lastModified) ||
                other.lastModified == lastModified) &&
            (identical(other.merchandiseTotalTax, merchandiseTotalTax) ||
                other.merchandiseTotalTax == merchandiseTotalTax) &&
            (identical(other.orderTotal, orderTotal) ||
                other.orderTotal == orderTotal) &&
            const DeepCollectionEquality()
                .equals(other._paymentInstruments, _paymentInstruments) &&
            const DeepCollectionEquality()
                .equals(other._productItems, _productItems) &&
            (identical(other.productSubTotal, productSubTotal) ||
                other.productSubTotal == productSubTotal) &&
            (identical(other.productTotal, productTotal) ||
                other.productTotal == productTotal) &&
            const DeepCollectionEquality()
                .equals(other._shipments, _shipments) &&
            const DeepCollectionEquality()
                .equals(other._shippingItems, _shippingItems) &&
            (identical(other.shippingTotal, shippingTotal) ||
                other.shippingTotal == shippingTotal) &&
            (identical(other.shippingTotalTax, shippingTotalTax) ||
                other.shippingTotalTax == shippingTotalTax) &&
            (identical(other.taxation, taxation) || other.taxation == taxation) &&
            (identical(other.taxTotal, taxTotal) || other.taxTotal == taxTotal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        adjustedMerchandiseTotalTax,
        adjustedShippingTotalTax,
        agentBasket,
        billingAddress,
        basketId,
        channelType,
        const DeepCollectionEquality().hash(_couponItems),
        creationDate,
        currency,
        customerInfo,
        lastModified,
        merchandiseTotalTax,
        orderTotal,
        const DeepCollectionEquality().hash(_paymentInstruments),
        const DeepCollectionEquality().hash(_productItems),
        productSubTotal,
        productTotal,
        const DeepCollectionEquality().hash(_shipments),
        const DeepCollectionEquality().hash(_shippingItems),
        shippingTotal,
        shippingTotalTax,
        taxation,
        taxTotal
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BasketImplCopyWith<_$BasketImpl> get copyWith =>
      __$$BasketImplCopyWithImpl<_$BasketImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BasketImplToJson(
      this,
    );
  }
}

abstract class _Basket implements Basket {
  factory _Basket(
      {required final int? adjustedMerchandiseTotalTax,
      required final int? adjustedShippingTotalTax,
      required final bool agentBasket,
      required final IngAddress? billingAddress,
      required final String basketId,
      required final String channelType,
      required final List<CouponItem>? couponItems,
      required final DateTime creationDate,
      required final String currency,
      required final CustomerInfo customerInfo,
      required final DateTime lastModified,
      required final int? merchandiseTotalTax,
      required final double? orderTotal,
      required final List<PaymentInstrument>? paymentInstruments,
      required final List<Item>? productItems,
      required final double productSubTotal,
      required final double productTotal,
      required final List<Shipment> shipments,
      required final List<ShippingItem> shippingItems,
      required final double? shippingTotal,
      required final double? shippingTotalTax,
      required final String taxation,
      required final double? taxTotal}) = _$BasketImpl;

  factory _Basket.fromJson(Map<String, dynamic> json) = _$BasketImpl.fromJson;

  @override
  int? get adjustedMerchandiseTotalTax;
  @override
  int? get adjustedShippingTotalTax;
  @override
  bool get agentBasket;
  @override
  IngAddress? get billingAddress;
  @override
  String get basketId;
  @override
  String get channelType;
  @override
  List<CouponItem>? get couponItems;
  @override
  DateTime get creationDate;
  @override
  String get currency;
  @override
  CustomerInfo get customerInfo;
  @override
  DateTime get lastModified;
  @override
  int? get merchandiseTotalTax;
  @override
  double? get orderTotal;
  @override
  List<PaymentInstrument>? get paymentInstruments;
  @override
  List<Item>? get productItems;
  @override
  double get productSubTotal;
  @override
  double get productTotal;
  @override
  List<Shipment> get shipments;
  @override
  List<ShippingItem> get shippingItems;
  @override
  double? get shippingTotal;
  @override
  double? get shippingTotalTax;
  @override
  String get taxation;
  @override
  double? get taxTotal;
  @override
  @JsonKey(ignore: true)
  _$$BasketImplCopyWith<_$BasketImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
