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
  int? get adjustedMerchandizeTotalTax => throw _privateConstructorUsedError;
  int? get adjustedShippingTotalTax => throw _privateConstructorUsedError;
  bool get agentBasket => throw _privateConstructorUsedError;
  String get basketId => throw _privateConstructorUsedError;
  String get channelType => throw _privateConstructorUsedError;
  DateTime get creationDate => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  CustomerInfo get customerInfo => throw _privateConstructorUsedError;
  DateTime get lastModified => throw _privateConstructorUsedError;
  int? get merchandizeTotalTax =>
      throw _privateConstructorUsedError; // required   Notes notes,
  int? get orderTotal => throw _privateConstructorUsedError;
  int get productSubTotal => throw _privateConstructorUsedError;
  int get productTotal => throw _privateConstructorUsedError;
  List<ProductItem>? get productItems => throw _privateConstructorUsedError;
  List<Shipment> get shipments => throw _privateConstructorUsedError;
  List<ShippingItem> get shippingItems => throw _privateConstructorUsedError;
  int? get shippingTotal => throw _privateConstructorUsedError;
  int? get shippingTotalTax => throw _privateConstructorUsedError;
  String get taxation => throw _privateConstructorUsedError;
  int? get taxTotal => throw _privateConstructorUsedError;

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
      {int? adjustedMerchandizeTotalTax,
      int? adjustedShippingTotalTax,
      bool agentBasket,
      String basketId,
      String channelType,
      DateTime creationDate,
      String currency,
      CustomerInfo customerInfo,
      DateTime lastModified,
      int? merchandizeTotalTax,
      int? orderTotal,
      int productSubTotal,
      int productTotal,
      List<ProductItem>? productItems,
      List<Shipment> shipments,
      List<ShippingItem> shippingItems,
      int? shippingTotal,
      int? shippingTotalTax,
      String taxation,
      int? taxTotal});

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
    Object? adjustedMerchandizeTotalTax = freezed,
    Object? adjustedShippingTotalTax = freezed,
    Object? agentBasket = null,
    Object? basketId = null,
    Object? channelType = null,
    Object? creationDate = null,
    Object? currency = null,
    Object? customerInfo = null,
    Object? lastModified = null,
    Object? merchandizeTotalTax = freezed,
    Object? orderTotal = freezed,
    Object? productSubTotal = null,
    Object? productTotal = null,
    Object? productItems = freezed,
    Object? shipments = null,
    Object? shippingItems = null,
    Object? shippingTotal = freezed,
    Object? shippingTotalTax = freezed,
    Object? taxation = null,
    Object? taxTotal = freezed,
  }) {
    return _then(_value.copyWith(
      adjustedMerchandizeTotalTax: freezed == adjustedMerchandizeTotalTax
          ? _value.adjustedMerchandizeTotalTax
          : adjustedMerchandizeTotalTax // ignore: cast_nullable_to_non_nullable
              as int?,
      adjustedShippingTotalTax: freezed == adjustedShippingTotalTax
          ? _value.adjustedShippingTotalTax
          : adjustedShippingTotalTax // ignore: cast_nullable_to_non_nullable
              as int?,
      agentBasket: null == agentBasket
          ? _value.agentBasket
          : agentBasket // ignore: cast_nullable_to_non_nullable
              as bool,
      basketId: null == basketId
          ? _value.basketId
          : basketId // ignore: cast_nullable_to_non_nullable
              as String,
      channelType: null == channelType
          ? _value.channelType
          : channelType // ignore: cast_nullable_to_non_nullable
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
      lastModified: null == lastModified
          ? _value.lastModified
          : lastModified // ignore: cast_nullable_to_non_nullable
              as DateTime,
      merchandizeTotalTax: freezed == merchandizeTotalTax
          ? _value.merchandizeTotalTax
          : merchandizeTotalTax // ignore: cast_nullable_to_non_nullable
              as int?,
      orderTotal: freezed == orderTotal
          ? _value.orderTotal
          : orderTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      productSubTotal: null == productSubTotal
          ? _value.productSubTotal
          : productSubTotal // ignore: cast_nullable_to_non_nullable
              as int,
      productTotal: null == productTotal
          ? _value.productTotal
          : productTotal // ignore: cast_nullable_to_non_nullable
              as int,
      productItems: freezed == productItems
          ? _value.productItems
          : productItems // ignore: cast_nullable_to_non_nullable
              as List<ProductItem>?,
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
              as int?,
      shippingTotalTax: freezed == shippingTotalTax
          ? _value.shippingTotalTax
          : shippingTotalTax // ignore: cast_nullable_to_non_nullable
              as int?,
      taxation: null == taxation
          ? _value.taxation
          : taxation // ignore: cast_nullable_to_non_nullable
              as String,
      taxTotal: freezed == taxTotal
          ? _value.taxTotal
          : taxTotal // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
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
      {int? adjustedMerchandizeTotalTax,
      int? adjustedShippingTotalTax,
      bool agentBasket,
      String basketId,
      String channelType,
      DateTime creationDate,
      String currency,
      CustomerInfo customerInfo,
      DateTime lastModified,
      int? merchandizeTotalTax,
      int? orderTotal,
      int productSubTotal,
      int productTotal,
      List<ProductItem>? productItems,
      List<Shipment> shipments,
      List<ShippingItem> shippingItems,
      int? shippingTotal,
      int? shippingTotalTax,
      String taxation,
      int? taxTotal});

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
    Object? adjustedMerchandizeTotalTax = freezed,
    Object? adjustedShippingTotalTax = freezed,
    Object? agentBasket = null,
    Object? basketId = null,
    Object? channelType = null,
    Object? creationDate = null,
    Object? currency = null,
    Object? customerInfo = null,
    Object? lastModified = null,
    Object? merchandizeTotalTax = freezed,
    Object? orderTotal = freezed,
    Object? productSubTotal = null,
    Object? productTotal = null,
    Object? productItems = freezed,
    Object? shipments = null,
    Object? shippingItems = null,
    Object? shippingTotal = freezed,
    Object? shippingTotalTax = freezed,
    Object? taxation = null,
    Object? taxTotal = freezed,
  }) {
    return _then(_$BasketImpl(
      adjustedMerchandizeTotalTax: freezed == adjustedMerchandizeTotalTax
          ? _value.adjustedMerchandizeTotalTax
          : adjustedMerchandizeTotalTax // ignore: cast_nullable_to_non_nullable
              as int?,
      adjustedShippingTotalTax: freezed == adjustedShippingTotalTax
          ? _value.adjustedShippingTotalTax
          : adjustedShippingTotalTax // ignore: cast_nullable_to_non_nullable
              as int?,
      agentBasket: null == agentBasket
          ? _value.agentBasket
          : agentBasket // ignore: cast_nullable_to_non_nullable
              as bool,
      basketId: null == basketId
          ? _value.basketId
          : basketId // ignore: cast_nullable_to_non_nullable
              as String,
      channelType: null == channelType
          ? _value.channelType
          : channelType // ignore: cast_nullable_to_non_nullable
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
      lastModified: null == lastModified
          ? _value.lastModified
          : lastModified // ignore: cast_nullable_to_non_nullable
              as DateTime,
      merchandizeTotalTax: freezed == merchandizeTotalTax
          ? _value.merchandizeTotalTax
          : merchandizeTotalTax // ignore: cast_nullable_to_non_nullable
              as int?,
      orderTotal: freezed == orderTotal
          ? _value.orderTotal
          : orderTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      productSubTotal: null == productSubTotal
          ? _value.productSubTotal
          : productSubTotal // ignore: cast_nullable_to_non_nullable
              as int,
      productTotal: null == productTotal
          ? _value.productTotal
          : productTotal // ignore: cast_nullable_to_non_nullable
              as int,
      productItems: freezed == productItems
          ? _value._productItems
          : productItems // ignore: cast_nullable_to_non_nullable
              as List<ProductItem>?,
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
              as int?,
      shippingTotalTax: freezed == shippingTotalTax
          ? _value.shippingTotalTax
          : shippingTotalTax // ignore: cast_nullable_to_non_nullable
              as int?,
      taxation: null == taxation
          ? _value.taxation
          : taxation // ignore: cast_nullable_to_non_nullable
              as String,
      taxTotal: freezed == taxTotal
          ? _value.taxTotal
          : taxTotal // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BasketImpl implements _Basket {
  _$BasketImpl(
      {required this.adjustedMerchandizeTotalTax,
      required this.adjustedShippingTotalTax,
      required this.agentBasket,
      required this.basketId,
      required this.channelType,
      required this.creationDate,
      required this.currency,
      required this.customerInfo,
      required this.lastModified,
      required this.merchandizeTotalTax,
      required this.orderTotal,
      required this.productSubTotal,
      required this.productTotal,
      required final List<ProductItem>? productItems,
      required final List<Shipment> shipments,
      required final List<ShippingItem> shippingItems,
      required this.shippingTotal,
      required this.shippingTotalTax,
      required this.taxation,
      required this.taxTotal})
      : _productItems = productItems,
        _shipments = shipments,
        _shippingItems = shippingItems;

  factory _$BasketImpl.fromJson(Map<String, dynamic> json) =>
      _$$BasketImplFromJson(json);

  @override
  final int? adjustedMerchandizeTotalTax;
  @override
  final int? adjustedShippingTotalTax;
  @override
  final bool agentBasket;
  @override
  final String basketId;
  @override
  final String channelType;
  @override
  final DateTime creationDate;
  @override
  final String currency;
  @override
  final CustomerInfo customerInfo;
  @override
  final DateTime lastModified;
  @override
  final int? merchandizeTotalTax;
// required   Notes notes,
  @override
  final int? orderTotal;
  @override
  final int productSubTotal;
  @override
  final int productTotal;
  final List<ProductItem>? _productItems;
  @override
  List<ProductItem>? get productItems {
    final value = _productItems;
    if (value == null) return null;
    if (_productItems is EqualUnmodifiableListView) return _productItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
  final int? shippingTotal;
  @override
  final int? shippingTotalTax;
  @override
  final String taxation;
  @override
  final int? taxTotal;

  @override
  String toString() {
    return 'Basket(adjustedMerchandizeTotalTax: $adjustedMerchandizeTotalTax, adjustedShippingTotalTax: $adjustedShippingTotalTax, agentBasket: $agentBasket, basketId: $basketId, channelType: $channelType, creationDate: $creationDate, currency: $currency, customerInfo: $customerInfo, lastModified: $lastModified, merchandizeTotalTax: $merchandizeTotalTax, orderTotal: $orderTotal, productSubTotal: $productSubTotal, productTotal: $productTotal, productItems: $productItems, shipments: $shipments, shippingItems: $shippingItems, shippingTotal: $shippingTotal, shippingTotalTax: $shippingTotalTax, taxation: $taxation, taxTotal: $taxTotal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasketImpl &&
            (identical(other.adjustedMerchandizeTotalTax,
                    adjustedMerchandizeTotalTax) ||
                other.adjustedMerchandizeTotalTax ==
                    adjustedMerchandizeTotalTax) &&
            (identical(
                    other.adjustedShippingTotalTax, adjustedShippingTotalTax) ||
                other.adjustedShippingTotalTax == adjustedShippingTotalTax) &&
            (identical(other.agentBasket, agentBasket) ||
                other.agentBasket == agentBasket) &&
            (identical(other.basketId, basketId) ||
                other.basketId == basketId) &&
            (identical(other.channelType, channelType) ||
                other.channelType == channelType) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.customerInfo, customerInfo) ||
                other.customerInfo == customerInfo) &&
            (identical(other.lastModified, lastModified) ||
                other.lastModified == lastModified) &&
            (identical(other.merchandizeTotalTax, merchandizeTotalTax) ||
                other.merchandizeTotalTax == merchandizeTotalTax) &&
            (identical(other.orderTotal, orderTotal) ||
                other.orderTotal == orderTotal) &&
            (identical(other.productSubTotal, productSubTotal) ||
                other.productSubTotal == productSubTotal) &&
            (identical(other.productTotal, productTotal) ||
                other.productTotal == productTotal) &&
            const DeepCollectionEquality()
                .equals(other._productItems, _productItems) &&
            const DeepCollectionEquality()
                .equals(other._shipments, _shipments) &&
            const DeepCollectionEquality()
                .equals(other._shippingItems, _shippingItems) &&
            (identical(other.shippingTotal, shippingTotal) ||
                other.shippingTotal == shippingTotal) &&
            (identical(other.shippingTotalTax, shippingTotalTax) ||
                other.shippingTotalTax == shippingTotalTax) &&
            (identical(other.taxation, taxation) ||
                other.taxation == taxation) &&
            (identical(other.taxTotal, taxTotal) ||
                other.taxTotal == taxTotal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        adjustedMerchandizeTotalTax,
        adjustedShippingTotalTax,
        agentBasket,
        basketId,
        channelType,
        creationDate,
        currency,
        customerInfo,
        lastModified,
        merchandizeTotalTax,
        orderTotal,
        productSubTotal,
        productTotal,
        const DeepCollectionEquality().hash(_productItems),
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
      {required final int? adjustedMerchandizeTotalTax,
      required final int? adjustedShippingTotalTax,
      required final bool agentBasket,
      required final String basketId,
      required final String channelType,
      required final DateTime creationDate,
      required final String currency,
      required final CustomerInfo customerInfo,
      required final DateTime lastModified,
      required final int? merchandizeTotalTax,
      required final int? orderTotal,
      required final int productSubTotal,
      required final int productTotal,
      required final List<ProductItem>? productItems,
      required final List<Shipment> shipments,
      required final List<ShippingItem> shippingItems,
      required final int? shippingTotal,
      required final int? shippingTotalTax,
      required final String taxation,
      required final int? taxTotal}) = _$BasketImpl;

  factory _Basket.fromJson(Map<String, dynamic> json) = _$BasketImpl.fromJson;

  @override
  int? get adjustedMerchandizeTotalTax;
  @override
  int? get adjustedShippingTotalTax;
  @override
  bool get agentBasket;
  @override
  String get basketId;
  @override
  String get channelType;
  @override
  DateTime get creationDate;
  @override
  String get currency;
  @override
  CustomerInfo get customerInfo;
  @override
  DateTime get lastModified;
  @override
  int? get merchandizeTotalTax;
  @override // required   Notes notes,
  int? get orderTotal;
  @override
  int get productSubTotal;
  @override
  int get productTotal;
  @override
  List<ProductItem>? get productItems;
  @override
  List<Shipment> get shipments;
  @override
  List<ShippingItem> get shippingItems;
  @override
  int? get shippingTotal;
  @override
  int? get shippingTotalTax;
  @override
  String get taxation;
  @override
  int? get taxTotal;
  @override
  @JsonKey(ignore: true)
  _$$BasketImplCopyWith<_$BasketImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
