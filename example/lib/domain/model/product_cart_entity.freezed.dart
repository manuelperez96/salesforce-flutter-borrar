// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_cart_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductCartEntity {
  String get name => throw _privateConstructorUsedError;
  String get productId => throw _privateConstructorUsedError;
  String get itemId => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  double get pricePerUnit => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductCartEntityCopyWith<ProductCartEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCartEntityCopyWith<$Res> {
  factory $ProductCartEntityCopyWith(
          ProductCartEntity value, $Res Function(ProductCartEntity) then) =
      _$ProductCartEntityCopyWithImpl<$Res, ProductCartEntity>;
  @useResult
  $Res call(
      {String name,
      String productId,
      String itemId,
      String image,
      double pricePerUnit,
      int quantity,
      String currency});
}

/// @nodoc
class _$ProductCartEntityCopyWithImpl<$Res, $Val extends ProductCartEntity>
    implements $ProductCartEntityCopyWith<$Res> {
  _$ProductCartEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? productId = null,
    Object? itemId = null,
    Object? image = null,
    Object? pricePerUnit = null,
    Object? quantity = null,
    Object? currency = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      pricePerUnit: null == pricePerUnit
          ? _value.pricePerUnit
          : pricePerUnit // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductCartEntityImplCopyWith<$Res>
    implements $ProductCartEntityCopyWith<$Res> {
  factory _$$ProductCartEntityImplCopyWith(_$ProductCartEntityImpl value,
          $Res Function(_$ProductCartEntityImpl) then) =
      __$$ProductCartEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String productId,
      String itemId,
      String image,
      double pricePerUnit,
      int quantity,
      String currency});
}

/// @nodoc
class __$$ProductCartEntityImplCopyWithImpl<$Res>
    extends _$ProductCartEntityCopyWithImpl<$Res, _$ProductCartEntityImpl>
    implements _$$ProductCartEntityImplCopyWith<$Res> {
  __$$ProductCartEntityImplCopyWithImpl(_$ProductCartEntityImpl _value,
      $Res Function(_$ProductCartEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? productId = null,
    Object? itemId = null,
    Object? image = null,
    Object? pricePerUnit = null,
    Object? quantity = null,
    Object? currency = null,
  }) {
    return _then(_$ProductCartEntityImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      pricePerUnit: null == pricePerUnit
          ? _value.pricePerUnit
          : pricePerUnit // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProductCartEntityImpl extends _ProductCartEntity {
  _$ProductCartEntityImpl(
      {required this.name,
      required this.productId,
      required this.itemId,
      required this.image,
      required this.pricePerUnit,
      required this.quantity,
      required this.currency})
      : super._();

  @override
  final String name;
  @override
  final String productId;
  @override
  final String itemId;
  @override
  final String image;
  @override
  final double pricePerUnit;
  @override
  final int quantity;
  @override
  final String currency;

  @override
  String toString() {
    return 'ProductCartEntity(name: $name, productId: $productId, itemId: $itemId, image: $image, pricePerUnit: $pricePerUnit, quantity: $quantity, currency: $currency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductCartEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.pricePerUnit, pricePerUnit) ||
                other.pricePerUnit == pricePerUnit) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, productId, itemId, image,
      pricePerUnit, quantity, currency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductCartEntityImplCopyWith<_$ProductCartEntityImpl> get copyWith =>
      __$$ProductCartEntityImplCopyWithImpl<_$ProductCartEntityImpl>(
          this, _$identity);
}

abstract class _ProductCartEntity extends ProductCartEntity {
  factory _ProductCartEntity(
      {required final String name,
      required final String productId,
      required final String itemId,
      required final String image,
      required final double pricePerUnit,
      required final int quantity,
      required final String currency}) = _$ProductCartEntityImpl;
  _ProductCartEntity._() : super._();

  @override
  String get name;
  @override
  String get productId;
  @override
  String get itemId;
  @override
  String get image;
  @override
  double get pricePerUnit;
  @override
  int get quantity;
  @override
  String get currency;
  @override
  @JsonKey(ignore: true)
  _$$ProductCartEntityImplCopyWith<_$ProductCartEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
