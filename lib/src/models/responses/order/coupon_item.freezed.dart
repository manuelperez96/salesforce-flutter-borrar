// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coupon_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CouponItem _$CouponItemFromJson(Map<String, dynamic> json) {
  return _CouponItem.fromJson(json);
}

/// @nodoc
mixin _$CouponItem {
  String get code => throw _privateConstructorUsedError;
  String get couponItemId => throw _privateConstructorUsedError;
  String get statusCode => throw _privateConstructorUsedError;
  bool get valid => throw _privateConstructorUsedError;

  /// Serializes this CouponItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CouponItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CouponItemCopyWith<CouponItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponItemCopyWith<$Res> {
  factory $CouponItemCopyWith(
          CouponItem value, $Res Function(CouponItem) then) =
      _$CouponItemCopyWithImpl<$Res, CouponItem>;
  @useResult
  $Res call({String code, String couponItemId, String statusCode, bool valid});
}

/// @nodoc
class _$CouponItemCopyWithImpl<$Res, $Val extends CouponItem>
    implements $CouponItemCopyWith<$Res> {
  _$CouponItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CouponItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? couponItemId = null,
    Object? statusCode = null,
    Object? valid = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      couponItemId: null == couponItemId
          ? _value.couponItemId
          : couponItemId // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as String,
      valid: null == valid
          ? _value.valid
          : valid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CouponItemImplCopyWith<$Res>
    implements $CouponItemCopyWith<$Res> {
  factory _$$CouponItemImplCopyWith(
          _$CouponItemImpl value, $Res Function(_$CouponItemImpl) then) =
      __$$CouponItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String couponItemId, String statusCode, bool valid});
}

/// @nodoc
class __$$CouponItemImplCopyWithImpl<$Res>
    extends _$CouponItemCopyWithImpl<$Res, _$CouponItemImpl>
    implements _$$CouponItemImplCopyWith<$Res> {
  __$$CouponItemImplCopyWithImpl(
      _$CouponItemImpl _value, $Res Function(_$CouponItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of CouponItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? couponItemId = null,
    Object? statusCode = null,
    Object? valid = null,
  }) {
    return _then(_$CouponItemImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      couponItemId: null == couponItemId
          ? _value.couponItemId
          : couponItemId // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as String,
      valid: null == valid
          ? _value.valid
          : valid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CouponItemImpl implements _CouponItem {
  _$CouponItemImpl(
      {required this.code,
      required this.couponItemId,
      required this.statusCode,
      required this.valid});

  factory _$CouponItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$CouponItemImplFromJson(json);

  @override
  final String code;
  @override
  final String couponItemId;
  @override
  final String statusCode;
  @override
  final bool valid;

  @override
  String toString() {
    return 'CouponItem(code: $code, couponItemId: $couponItemId, statusCode: $statusCode, valid: $valid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CouponItemImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.couponItemId, couponItemId) ||
                other.couponItemId == couponItemId) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.valid, valid) || other.valid == valid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, code, couponItemId, statusCode, valid);

  /// Create a copy of CouponItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CouponItemImplCopyWith<_$CouponItemImpl> get copyWith =>
      __$$CouponItemImplCopyWithImpl<_$CouponItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CouponItemImplToJson(
      this,
    );
  }
}

abstract class _CouponItem implements CouponItem {
  factory _CouponItem(
      {required final String code,
      required final String couponItemId,
      required final String statusCode,
      required final bool valid}) = _$CouponItemImpl;

  factory _CouponItem.fromJson(Map<String, dynamic> json) =
      _$CouponItemImpl.fromJson;

  @override
  String get code;
  @override
  String get couponItemId;
  @override
  String get statusCode;
  @override
  bool get valid;

  /// Create a copy of CouponItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CouponItemImplCopyWith<_$CouponItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
