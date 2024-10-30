// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gift_certificate_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GiftCertificateItem _$GiftCertificateItemFromJson(Map<String, dynamic> json) {
  return _GiftCertificateItem.fromJson(json);
}

/// @nodoc
mixin _$GiftCertificateItem {
  int get amount => throw _privateConstructorUsedError;
  String get giftCertificateItemId => throw _privateConstructorUsedError;
  String get recipientEmail => throw _privateConstructorUsedError;
  String get shipmentId => throw _privateConstructorUsedError;

  /// Serializes this GiftCertificateItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GiftCertificateItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GiftCertificateItemCopyWith<GiftCertificateItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GiftCertificateItemCopyWith<$Res> {
  factory $GiftCertificateItemCopyWith(
          GiftCertificateItem value, $Res Function(GiftCertificateItem) then) =
      _$GiftCertificateItemCopyWithImpl<$Res, GiftCertificateItem>;
  @useResult
  $Res call(
      {int amount,
      String giftCertificateItemId,
      String recipientEmail,
      String shipmentId});
}

/// @nodoc
class _$GiftCertificateItemCopyWithImpl<$Res, $Val extends GiftCertificateItem>
    implements $GiftCertificateItemCopyWith<$Res> {
  _$GiftCertificateItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GiftCertificateItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? giftCertificateItemId = null,
    Object? recipientEmail = null,
    Object? shipmentId = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      giftCertificateItemId: null == giftCertificateItemId
          ? _value.giftCertificateItemId
          : giftCertificateItemId // ignore: cast_nullable_to_non_nullable
              as String,
      recipientEmail: null == recipientEmail
          ? _value.recipientEmail
          : recipientEmail // ignore: cast_nullable_to_non_nullable
              as String,
      shipmentId: null == shipmentId
          ? _value.shipmentId
          : shipmentId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GiftCertificateItemImplCopyWith<$Res>
    implements $GiftCertificateItemCopyWith<$Res> {
  factory _$$GiftCertificateItemImplCopyWith(_$GiftCertificateItemImpl value,
          $Res Function(_$GiftCertificateItemImpl) then) =
      __$$GiftCertificateItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int amount,
      String giftCertificateItemId,
      String recipientEmail,
      String shipmentId});
}

/// @nodoc
class __$$GiftCertificateItemImplCopyWithImpl<$Res>
    extends _$GiftCertificateItemCopyWithImpl<$Res, _$GiftCertificateItemImpl>
    implements _$$GiftCertificateItemImplCopyWith<$Res> {
  __$$GiftCertificateItemImplCopyWithImpl(_$GiftCertificateItemImpl _value,
      $Res Function(_$GiftCertificateItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of GiftCertificateItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? giftCertificateItemId = null,
    Object? recipientEmail = null,
    Object? shipmentId = null,
  }) {
    return _then(_$GiftCertificateItemImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      giftCertificateItemId: null == giftCertificateItemId
          ? _value.giftCertificateItemId
          : giftCertificateItemId // ignore: cast_nullable_to_non_nullable
              as String,
      recipientEmail: null == recipientEmail
          ? _value.recipientEmail
          : recipientEmail // ignore: cast_nullable_to_non_nullable
              as String,
      shipmentId: null == shipmentId
          ? _value.shipmentId
          : shipmentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GiftCertificateItemImpl implements _GiftCertificateItem {
  _$GiftCertificateItemImpl(
      {required this.amount,
      required this.giftCertificateItemId,
      required this.recipientEmail,
      required this.shipmentId});

  factory _$GiftCertificateItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$GiftCertificateItemImplFromJson(json);

  @override
  final int amount;
  @override
  final String giftCertificateItemId;
  @override
  final String recipientEmail;
  @override
  final String shipmentId;

  @override
  String toString() {
    return 'GiftCertificateItem(amount: $amount, giftCertificateItemId: $giftCertificateItemId, recipientEmail: $recipientEmail, shipmentId: $shipmentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GiftCertificateItemImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.giftCertificateItemId, giftCertificateItemId) ||
                other.giftCertificateItemId == giftCertificateItemId) &&
            (identical(other.recipientEmail, recipientEmail) ||
                other.recipientEmail == recipientEmail) &&
            (identical(other.shipmentId, shipmentId) ||
                other.shipmentId == shipmentId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, amount, giftCertificateItemId, recipientEmail, shipmentId);

  /// Create a copy of GiftCertificateItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GiftCertificateItemImplCopyWith<_$GiftCertificateItemImpl> get copyWith =>
      __$$GiftCertificateItemImplCopyWithImpl<_$GiftCertificateItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GiftCertificateItemImplToJson(
      this,
    );
  }
}

abstract class _GiftCertificateItem implements GiftCertificateItem {
  factory _GiftCertificateItem(
      {required final int amount,
      required final String giftCertificateItemId,
      required final String recipientEmail,
      required final String shipmentId}) = _$GiftCertificateItemImpl;

  factory _GiftCertificateItem.fromJson(Map<String, dynamic> json) =
      _$GiftCertificateItemImpl.fromJson;

  @override
  int get amount;
  @override
  String get giftCertificateItemId;
  @override
  String get recipientEmail;
  @override
  String get shipmentId;

  /// Create a copy of GiftCertificateItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GiftCertificateItemImplCopyWith<_$GiftCertificateItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
