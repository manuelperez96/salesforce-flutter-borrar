// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_price_adjustment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderPriceAdjustment _$OrderPriceAdjustmentFromJson(Map<String, dynamic> json) {
  return _OrderPriceAdjustment.fromJson(json);
}

/// @nodoc
mixin _$OrderPriceAdjustment {
  AppliedDiscount get appliedDiscount => throw _privateConstructorUsedError;
  String get reasonCode => throw _privateConstructorUsedError;
  String get createdBy => throw _privateConstructorUsedError;
  DateTime get creationDate => throw _privateConstructorUsedError;
  bool get custom => throw _privateConstructorUsedError;
  DateTime get lastModified => throw _privateConstructorUsedError;
  bool get manual => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get priceAdjustmentId => throw _privateConstructorUsedError;
  String get promotionId => throw _privateConstructorUsedError;

  /// Serializes this OrderPriceAdjustment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderPriceAdjustment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderPriceAdjustmentCopyWith<OrderPriceAdjustment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderPriceAdjustmentCopyWith<$Res> {
  factory $OrderPriceAdjustmentCopyWith(OrderPriceAdjustment value,
          $Res Function(OrderPriceAdjustment) then) =
      _$OrderPriceAdjustmentCopyWithImpl<$Res, OrderPriceAdjustment>;
  @useResult
  $Res call(
      {AppliedDiscount appliedDiscount,
      String reasonCode,
      String createdBy,
      DateTime creationDate,
      bool custom,
      DateTime lastModified,
      bool manual,
      int price,
      String priceAdjustmentId,
      String promotionId});

  $AppliedDiscountCopyWith<$Res> get appliedDiscount;
}

/// @nodoc
class _$OrderPriceAdjustmentCopyWithImpl<$Res,
        $Val extends OrderPriceAdjustment>
    implements $OrderPriceAdjustmentCopyWith<$Res> {
  _$OrderPriceAdjustmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderPriceAdjustment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appliedDiscount = null,
    Object? reasonCode = null,
    Object? createdBy = null,
    Object? creationDate = null,
    Object? custom = null,
    Object? lastModified = null,
    Object? manual = null,
    Object? price = null,
    Object? priceAdjustmentId = null,
    Object? promotionId = null,
  }) {
    return _then(_value.copyWith(
      appliedDiscount: null == appliedDiscount
          ? _value.appliedDiscount
          : appliedDiscount // ignore: cast_nullable_to_non_nullable
              as AppliedDiscount,
      reasonCode: null == reasonCode
          ? _value.reasonCode
          : reasonCode // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      creationDate: null == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      custom: null == custom
          ? _value.custom
          : custom // ignore: cast_nullable_to_non_nullable
              as bool,
      lastModified: null == lastModified
          ? _value.lastModified
          : lastModified // ignore: cast_nullable_to_non_nullable
              as DateTime,
      manual: null == manual
          ? _value.manual
          : manual // ignore: cast_nullable_to_non_nullable
              as bool,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      priceAdjustmentId: null == priceAdjustmentId
          ? _value.priceAdjustmentId
          : priceAdjustmentId // ignore: cast_nullable_to_non_nullable
              as String,
      promotionId: null == promotionId
          ? _value.promotionId
          : promotionId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of OrderPriceAdjustment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppliedDiscountCopyWith<$Res> get appliedDiscount {
    return $AppliedDiscountCopyWith<$Res>(_value.appliedDiscount, (value) {
      return _then(_value.copyWith(appliedDiscount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderPriceAdjustmentImplCopyWith<$Res>
    implements $OrderPriceAdjustmentCopyWith<$Res> {
  factory _$$OrderPriceAdjustmentImplCopyWith(_$OrderPriceAdjustmentImpl value,
          $Res Function(_$OrderPriceAdjustmentImpl) then) =
      __$$OrderPriceAdjustmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppliedDiscount appliedDiscount,
      String reasonCode,
      String createdBy,
      DateTime creationDate,
      bool custom,
      DateTime lastModified,
      bool manual,
      int price,
      String priceAdjustmentId,
      String promotionId});

  @override
  $AppliedDiscountCopyWith<$Res> get appliedDiscount;
}

/// @nodoc
class __$$OrderPriceAdjustmentImplCopyWithImpl<$Res>
    extends _$OrderPriceAdjustmentCopyWithImpl<$Res, _$OrderPriceAdjustmentImpl>
    implements _$$OrderPriceAdjustmentImplCopyWith<$Res> {
  __$$OrderPriceAdjustmentImplCopyWithImpl(_$OrderPriceAdjustmentImpl _value,
      $Res Function(_$OrderPriceAdjustmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderPriceAdjustment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appliedDiscount = null,
    Object? reasonCode = null,
    Object? createdBy = null,
    Object? creationDate = null,
    Object? custom = null,
    Object? lastModified = null,
    Object? manual = null,
    Object? price = null,
    Object? priceAdjustmentId = null,
    Object? promotionId = null,
  }) {
    return _then(_$OrderPriceAdjustmentImpl(
      appliedDiscount: null == appliedDiscount
          ? _value.appliedDiscount
          : appliedDiscount // ignore: cast_nullable_to_non_nullable
              as AppliedDiscount,
      reasonCode: null == reasonCode
          ? _value.reasonCode
          : reasonCode // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      creationDate: null == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      custom: null == custom
          ? _value.custom
          : custom // ignore: cast_nullable_to_non_nullable
              as bool,
      lastModified: null == lastModified
          ? _value.lastModified
          : lastModified // ignore: cast_nullable_to_non_nullable
              as DateTime,
      manual: null == manual
          ? _value.manual
          : manual // ignore: cast_nullable_to_non_nullable
              as bool,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      priceAdjustmentId: null == priceAdjustmentId
          ? _value.priceAdjustmentId
          : priceAdjustmentId // ignore: cast_nullable_to_non_nullable
              as String,
      promotionId: null == promotionId
          ? _value.promotionId
          : promotionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderPriceAdjustmentImpl implements _OrderPriceAdjustment {
  _$OrderPriceAdjustmentImpl(
      {required this.appliedDiscount,
      required this.reasonCode,
      required this.createdBy,
      required this.creationDate,
      required this.custom,
      required this.lastModified,
      required this.manual,
      required this.price,
      required this.priceAdjustmentId,
      required this.promotionId});

  factory _$OrderPriceAdjustmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderPriceAdjustmentImplFromJson(json);

  @override
  final AppliedDiscount appliedDiscount;
  @override
  final String reasonCode;
  @override
  final String createdBy;
  @override
  final DateTime creationDate;
  @override
  final bool custom;
  @override
  final DateTime lastModified;
  @override
  final bool manual;
  @override
  final int price;
  @override
  final String priceAdjustmentId;
  @override
  final String promotionId;

  @override
  String toString() {
    return 'OrderPriceAdjustment(appliedDiscount: $appliedDiscount, reasonCode: $reasonCode, createdBy: $createdBy, creationDate: $creationDate, custom: $custom, lastModified: $lastModified, manual: $manual, price: $price, priceAdjustmentId: $priceAdjustmentId, promotionId: $promotionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderPriceAdjustmentImpl &&
            (identical(other.appliedDiscount, appliedDiscount) ||
                other.appliedDiscount == appliedDiscount) &&
            (identical(other.reasonCode, reasonCode) ||
                other.reasonCode == reasonCode) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate) &&
            (identical(other.custom, custom) || other.custom == custom) &&
            (identical(other.lastModified, lastModified) ||
                other.lastModified == lastModified) &&
            (identical(other.manual, manual) || other.manual == manual) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.priceAdjustmentId, priceAdjustmentId) ||
                other.priceAdjustmentId == priceAdjustmentId) &&
            (identical(other.promotionId, promotionId) ||
                other.promotionId == promotionId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      appliedDiscount,
      reasonCode,
      createdBy,
      creationDate,
      custom,
      lastModified,
      manual,
      price,
      priceAdjustmentId,
      promotionId);

  /// Create a copy of OrderPriceAdjustment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderPriceAdjustmentImplCopyWith<_$OrderPriceAdjustmentImpl>
      get copyWith =>
          __$$OrderPriceAdjustmentImplCopyWithImpl<_$OrderPriceAdjustmentImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderPriceAdjustmentImplToJson(
      this,
    );
  }
}

abstract class _OrderPriceAdjustment implements OrderPriceAdjustment {
  factory _OrderPriceAdjustment(
      {required final AppliedDiscount appliedDiscount,
      required final String reasonCode,
      required final String createdBy,
      required final DateTime creationDate,
      required final bool custom,
      required final DateTime lastModified,
      required final bool manual,
      required final int price,
      required final String priceAdjustmentId,
      required final String promotionId}) = _$OrderPriceAdjustmentImpl;

  factory _OrderPriceAdjustment.fromJson(Map<String, dynamic> json) =
      _$OrderPriceAdjustmentImpl.fromJson;

  @override
  AppliedDiscount get appliedDiscount;
  @override
  String get reasonCode;
  @override
  String get createdBy;
  @override
  DateTime get creationDate;
  @override
  bool get custom;
  @override
  DateTime get lastModified;
  @override
  bool get manual;
  @override
  int get price;
  @override
  String get priceAdjustmentId;
  @override
  String get promotionId;

  /// Create a copy of OrderPriceAdjustment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderPriceAdjustmentImplCopyWith<_$OrderPriceAdjustmentImpl>
      get copyWith => throw _privateConstructorUsedError;
}
