// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
mixin _$Item {
  int get adjustedTax => throw _privateConstructorUsedError;
  double get basePrice => throw _privateConstructorUsedError;
  bool get bonusProductLineItem => throw _privateConstructorUsedError;
  bool get gift => throw _privateConstructorUsedError;
  String get itemId => throw _privateConstructorUsedError;
  String get itemText => throw _privateConstructorUsedError;
  List<Item>? get optionItems => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double get priceAfterItemDiscount => throw _privateConstructorUsedError;
  double get priceAfterOrderDiscount => throw _privateConstructorUsedError;
  String get productId => throw _privateConstructorUsedError;
  String get productName => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  String get shipmentId => throw _privateConstructorUsedError;
  int get tax => throw _privateConstructorUsedError;
  double get taxBasis => throw _privateConstructorUsedError;
  String get taxClassId => throw _privateConstructorUsedError;
  double get taxRate => throw _privateConstructorUsedError;
  String? get optionId => throw _privateConstructorUsedError;
  String? get optionValueId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res, Item>;
  @useResult
  $Res call(
      {int adjustedTax,
      double basePrice,
      bool bonusProductLineItem,
      bool gift,
      String itemId,
      String itemText,
      List<Item>? optionItems,
      double price,
      double priceAfterItemDiscount,
      double priceAfterOrderDiscount,
      String productId,
      String productName,
      int quantity,
      String shipmentId,
      int tax,
      double taxBasis,
      String taxClassId,
      double taxRate,
      String? optionId,
      String? optionValueId});
}

/// @nodoc
class _$ItemCopyWithImpl<$Res, $Val extends Item>
    implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adjustedTax = null,
    Object? basePrice = null,
    Object? bonusProductLineItem = null,
    Object? gift = null,
    Object? itemId = null,
    Object? itemText = null,
    Object? optionItems = freezed,
    Object? price = null,
    Object? priceAfterItemDiscount = null,
    Object? priceAfterOrderDiscount = null,
    Object? productId = null,
    Object? productName = null,
    Object? quantity = null,
    Object? shipmentId = null,
    Object? tax = null,
    Object? taxBasis = null,
    Object? taxClassId = null,
    Object? taxRate = null,
    Object? optionId = freezed,
    Object? optionValueId = freezed,
  }) {
    return _then(_value.copyWith(
      adjustedTax: null == adjustedTax
          ? _value.adjustedTax
          : adjustedTax // ignore: cast_nullable_to_non_nullable
              as int,
      basePrice: null == basePrice
          ? _value.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as double,
      bonusProductLineItem: null == bonusProductLineItem
          ? _value.bonusProductLineItem
          : bonusProductLineItem // ignore: cast_nullable_to_non_nullable
              as bool,
      gift: null == gift
          ? _value.gift
          : gift // ignore: cast_nullable_to_non_nullable
              as bool,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      itemText: null == itemText
          ? _value.itemText
          : itemText // ignore: cast_nullable_to_non_nullable
              as String,
      optionItems: freezed == optionItems
          ? _value.optionItems
          : optionItems // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      priceAfterItemDiscount: null == priceAfterItemDiscount
          ? _value.priceAfterItemDiscount
          : priceAfterItemDiscount // ignore: cast_nullable_to_non_nullable
              as double,
      priceAfterOrderDiscount: null == priceAfterOrderDiscount
          ? _value.priceAfterOrderDiscount
          : priceAfterOrderDiscount // ignore: cast_nullable_to_non_nullable
              as double,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      shipmentId: null == shipmentId
          ? _value.shipmentId
          : shipmentId // ignore: cast_nullable_to_non_nullable
              as String,
      tax: null == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as int,
      taxBasis: null == taxBasis
          ? _value.taxBasis
          : taxBasis // ignore: cast_nullable_to_non_nullable
              as double,
      taxClassId: null == taxClassId
          ? _value.taxClassId
          : taxClassId // ignore: cast_nullable_to_non_nullable
              as String,
      taxRate: null == taxRate
          ? _value.taxRate
          : taxRate // ignore: cast_nullable_to_non_nullable
              as double,
      optionId: freezed == optionId
          ? _value.optionId
          : optionId // ignore: cast_nullable_to_non_nullable
              as String?,
      optionValueId: freezed == optionValueId
          ? _value.optionValueId
          : optionValueId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItemImplCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$$ItemImplCopyWith(
          _$ItemImpl value, $Res Function(_$ItemImpl) then) =
      __$$ItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int adjustedTax,
      double basePrice,
      bool bonusProductLineItem,
      bool gift,
      String itemId,
      String itemText,
      List<Item>? optionItems,
      double price,
      double priceAfterItemDiscount,
      double priceAfterOrderDiscount,
      String productId,
      String productName,
      int quantity,
      String shipmentId,
      int tax,
      double taxBasis,
      String taxClassId,
      double taxRate,
      String? optionId,
      String? optionValueId});
}

/// @nodoc
class __$$ItemImplCopyWithImpl<$Res>
    extends _$ItemCopyWithImpl<$Res, _$ItemImpl>
    implements _$$ItemImplCopyWith<$Res> {
  __$$ItemImplCopyWithImpl(_$ItemImpl _value, $Res Function(_$ItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adjustedTax = null,
    Object? basePrice = null,
    Object? bonusProductLineItem = null,
    Object? gift = null,
    Object? itemId = null,
    Object? itemText = null,
    Object? optionItems = freezed,
    Object? price = null,
    Object? priceAfterItemDiscount = null,
    Object? priceAfterOrderDiscount = null,
    Object? productId = null,
    Object? productName = null,
    Object? quantity = null,
    Object? shipmentId = null,
    Object? tax = null,
    Object? taxBasis = null,
    Object? taxClassId = null,
    Object? taxRate = null,
    Object? optionId = freezed,
    Object? optionValueId = freezed,
  }) {
    return _then(_$ItemImpl(
      adjustedTax: null == adjustedTax
          ? _value.adjustedTax
          : adjustedTax // ignore: cast_nullable_to_non_nullable
              as int,
      basePrice: null == basePrice
          ? _value.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as double,
      bonusProductLineItem: null == bonusProductLineItem
          ? _value.bonusProductLineItem
          : bonusProductLineItem // ignore: cast_nullable_to_non_nullable
              as bool,
      gift: null == gift
          ? _value.gift
          : gift // ignore: cast_nullable_to_non_nullable
              as bool,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      itemText: null == itemText
          ? _value.itemText
          : itemText // ignore: cast_nullable_to_non_nullable
              as String,
      optionItems: freezed == optionItems
          ? _value._optionItems
          : optionItems // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      priceAfterItemDiscount: null == priceAfterItemDiscount
          ? _value.priceAfterItemDiscount
          : priceAfterItemDiscount // ignore: cast_nullable_to_non_nullable
              as double,
      priceAfterOrderDiscount: null == priceAfterOrderDiscount
          ? _value.priceAfterOrderDiscount
          : priceAfterOrderDiscount // ignore: cast_nullable_to_non_nullable
              as double,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      shipmentId: null == shipmentId
          ? _value.shipmentId
          : shipmentId // ignore: cast_nullable_to_non_nullable
              as String,
      tax: null == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as int,
      taxBasis: null == taxBasis
          ? _value.taxBasis
          : taxBasis // ignore: cast_nullable_to_non_nullable
              as double,
      taxClassId: null == taxClassId
          ? _value.taxClassId
          : taxClassId // ignore: cast_nullable_to_non_nullable
              as String,
      taxRate: null == taxRate
          ? _value.taxRate
          : taxRate // ignore: cast_nullable_to_non_nullable
              as double,
      optionId: freezed == optionId
          ? _value.optionId
          : optionId // ignore: cast_nullable_to_non_nullable
              as String?,
      optionValueId: freezed == optionValueId
          ? _value.optionValueId
          : optionValueId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemImpl implements _Item {
  _$ItemImpl(
      {required this.adjustedTax,
      required this.basePrice,
      required this.bonusProductLineItem,
      required this.gift,
      required this.itemId,
      required this.itemText,
      required final List<Item>? optionItems,
      required this.price,
      required this.priceAfterItemDiscount,
      required this.priceAfterOrderDiscount,
      required this.productId,
      required this.productName,
      required this.quantity,
      required this.shipmentId,
      required this.tax,
      required this.taxBasis,
      required this.taxClassId,
      required this.taxRate,
      required this.optionId,
      required this.optionValueId})
      : _optionItems = optionItems;

  factory _$ItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemImplFromJson(json);

  @override
  final int adjustedTax;
  @override
  final double basePrice;
  @override
  final bool bonusProductLineItem;
  @override
  final bool gift;
  @override
  final String itemId;
  @override
  final String itemText;
  final List<Item>? _optionItems;
  @override
  List<Item>? get optionItems {
    final value = _optionItems;
    if (value == null) return null;
    if (_optionItems is EqualUnmodifiableListView) return _optionItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final double price;
  @override
  final double priceAfterItemDiscount;
  @override
  final double priceAfterOrderDiscount;
  @override
  final String productId;
  @override
  final String productName;
  @override
  final int quantity;
  @override
  final String shipmentId;
  @override
  final int tax;
  @override
  final double taxBasis;
  @override
  final String taxClassId;
  @override
  final double taxRate;
  @override
  final String? optionId;
  @override
  final String? optionValueId;

  @override
  String toString() {
    return 'Item(adjustedTax: $adjustedTax, basePrice: $basePrice, bonusProductLineItem: $bonusProductLineItem, gift: $gift, itemId: $itemId, itemText: $itemText, optionItems: $optionItems, price: $price, priceAfterItemDiscount: $priceAfterItemDiscount, priceAfterOrderDiscount: $priceAfterOrderDiscount, productId: $productId, productName: $productName, quantity: $quantity, shipmentId: $shipmentId, tax: $tax, taxBasis: $taxBasis, taxClassId: $taxClassId, taxRate: $taxRate, optionId: $optionId, optionValueId: $optionValueId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemImpl &&
            (identical(other.adjustedTax, adjustedTax) ||
                other.adjustedTax == adjustedTax) &&
            (identical(other.basePrice, basePrice) ||
                other.basePrice == basePrice) &&
            (identical(other.bonusProductLineItem, bonusProductLineItem) ||
                other.bonusProductLineItem == bonusProductLineItem) &&
            (identical(other.gift, gift) || other.gift == gift) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.itemText, itemText) ||
                other.itemText == itemText) &&
            const DeepCollectionEquality()
                .equals(other._optionItems, _optionItems) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.priceAfterItemDiscount, priceAfterItemDiscount) ||
                other.priceAfterItemDiscount == priceAfterItemDiscount) &&
            (identical(
                    other.priceAfterOrderDiscount, priceAfterOrderDiscount) ||
                other.priceAfterOrderDiscount == priceAfterOrderDiscount) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.shipmentId, shipmentId) ||
                other.shipmentId == shipmentId) &&
            (identical(other.tax, tax) || other.tax == tax) &&
            (identical(other.taxBasis, taxBasis) ||
                other.taxBasis == taxBasis) &&
            (identical(other.taxClassId, taxClassId) ||
                other.taxClassId == taxClassId) &&
            (identical(other.taxRate, taxRate) || other.taxRate == taxRate) &&
            (identical(other.optionId, optionId) ||
                other.optionId == optionId) &&
            (identical(other.optionValueId, optionValueId) ||
                other.optionValueId == optionValueId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        adjustedTax,
        basePrice,
        bonusProductLineItem,
        gift,
        itemId,
        itemText,
        const DeepCollectionEquality().hash(_optionItems),
        price,
        priceAfterItemDiscount,
        priceAfterOrderDiscount,
        productId,
        productName,
        quantity,
        shipmentId,
        tax,
        taxBasis,
        taxClassId,
        taxRate,
        optionId,
        optionValueId
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      __$$ItemImplCopyWithImpl<_$ItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemImplToJson(
      this,
    );
  }
}

abstract class _Item implements Item {
  factory _Item(
      {required final int adjustedTax,
      required final double basePrice,
      required final bool bonusProductLineItem,
      required final bool gift,
      required final String itemId,
      required final String itemText,
      required final List<Item>? optionItems,
      required final double price,
      required final double priceAfterItemDiscount,
      required final double priceAfterOrderDiscount,
      required final String productId,
      required final String productName,
      required final int quantity,
      required final String shipmentId,
      required final int tax,
      required final double taxBasis,
      required final String taxClassId,
      required final double taxRate,
      required final String? optionId,
      required final String? optionValueId}) = _$ItemImpl;

  factory _Item.fromJson(Map<String, dynamic> json) = _$ItemImpl.fromJson;

  @override
  int get adjustedTax;
  @override
  double get basePrice;
  @override
  bool get bonusProductLineItem;
  @override
  bool get gift;
  @override
  String get itemId;
  @override
  String get itemText;
  @override
  List<Item>? get optionItems;
  @override
  double get price;
  @override
  double get priceAfterItemDiscount;
  @override
  double get priceAfterOrderDiscount;
  @override
  String get productId;
  @override
  String get productName;
  @override
  int get quantity;
  @override
  String get shipmentId;
  @override
  int get tax;
  @override
  double get taxBasis;
  @override
  String get taxClassId;
  @override
  double get taxRate;
  @override
  String? get optionId;
  @override
  String? get optionValueId;
  @override
  @JsonKey(ignore: true)
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
