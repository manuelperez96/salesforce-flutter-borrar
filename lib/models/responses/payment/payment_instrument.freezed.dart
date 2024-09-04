// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_instrument.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentInstrument _$PaymentInstrumentFromJson(Map<String, dynamic> json) {
  return _PaymentInstrument.fromJson(json);
}

/// @nodoc
mixin _$PaymentInstrument {
  double get amount => throw _privateConstructorUsedError;
  String get paymentInstrumentId => throw _privateConstructorUsedError;
  String get paymentMethodId => throw _privateConstructorUsedError;
  PaymentCard? get paymentCard => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentInstrumentCopyWith<PaymentInstrument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentInstrumentCopyWith<$Res> {
  factory $PaymentInstrumentCopyWith(
          PaymentInstrument value, $Res Function(PaymentInstrument) then) =
      _$PaymentInstrumentCopyWithImpl<$Res, PaymentInstrument>;
  @useResult
  $Res call(
      {double amount,
      String paymentInstrumentId,
      String paymentMethodId,
      PaymentCard? paymentCard});

  $PaymentCardCopyWith<$Res>? get paymentCard;
}

/// @nodoc
class _$PaymentInstrumentCopyWithImpl<$Res, $Val extends PaymentInstrument>
    implements $PaymentInstrumentCopyWith<$Res> {
  _$PaymentInstrumentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? paymentInstrumentId = null,
    Object? paymentMethodId = null,
    Object? paymentCard = freezed,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentInstrumentId: null == paymentInstrumentId
          ? _value.paymentInstrumentId
          : paymentInstrumentId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethodId: null == paymentMethodId
          ? _value.paymentMethodId
          : paymentMethodId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentCard: freezed == paymentCard
          ? _value.paymentCard
          : paymentCard // ignore: cast_nullable_to_non_nullable
              as PaymentCard?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentCardCopyWith<$Res>? get paymentCard {
    if (_value.paymentCard == null) {
      return null;
    }

    return $PaymentCardCopyWith<$Res>(_value.paymentCard!, (value) {
      return _then(_value.copyWith(paymentCard: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaymentInstrumentImplCopyWith<$Res>
    implements $PaymentInstrumentCopyWith<$Res> {
  factory _$$PaymentInstrumentImplCopyWith(_$PaymentInstrumentImpl value,
          $Res Function(_$PaymentInstrumentImpl) then) =
      __$$PaymentInstrumentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double amount,
      String paymentInstrumentId,
      String paymentMethodId,
      PaymentCard? paymentCard});

  @override
  $PaymentCardCopyWith<$Res>? get paymentCard;
}

/// @nodoc
class __$$PaymentInstrumentImplCopyWithImpl<$Res>
    extends _$PaymentInstrumentCopyWithImpl<$Res, _$PaymentInstrumentImpl>
    implements _$$PaymentInstrumentImplCopyWith<$Res> {
  __$$PaymentInstrumentImplCopyWithImpl(_$PaymentInstrumentImpl _value,
      $Res Function(_$PaymentInstrumentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? paymentInstrumentId = null,
    Object? paymentMethodId = null,
    Object? paymentCard = freezed,
  }) {
    return _then(_$PaymentInstrumentImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentInstrumentId: null == paymentInstrumentId
          ? _value.paymentInstrumentId
          : paymentInstrumentId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethodId: null == paymentMethodId
          ? _value.paymentMethodId
          : paymentMethodId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentCard: freezed == paymentCard
          ? _value.paymentCard
          : paymentCard // ignore: cast_nullable_to_non_nullable
              as PaymentCard?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentInstrumentImpl implements _PaymentInstrument {
  _$PaymentInstrumentImpl(
      {required this.amount,
      required this.paymentInstrumentId,
      required this.paymentMethodId,
      required this.paymentCard});

  factory _$PaymentInstrumentImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentInstrumentImplFromJson(json);

  @override
  final double amount;
  @override
  final String paymentInstrumentId;
  @override
  final String paymentMethodId;
  @override
  final PaymentCard? paymentCard;

  @override
  String toString() {
    return 'PaymentInstrument(amount: $amount, paymentInstrumentId: $paymentInstrumentId, paymentMethodId: $paymentMethodId, paymentCard: $paymentCard)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentInstrumentImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.paymentInstrumentId, paymentInstrumentId) ||
                other.paymentInstrumentId == paymentInstrumentId) &&
            (identical(other.paymentMethodId, paymentMethodId) ||
                other.paymentMethodId == paymentMethodId) &&
            (identical(other.paymentCard, paymentCard) ||
                other.paymentCard == paymentCard));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, amount, paymentInstrumentId, paymentMethodId, paymentCard);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentInstrumentImplCopyWith<_$PaymentInstrumentImpl> get copyWith =>
      __$$PaymentInstrumentImplCopyWithImpl<_$PaymentInstrumentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentInstrumentImplToJson(
      this,
    );
  }
}

abstract class _PaymentInstrument implements PaymentInstrument {
  factory _PaymentInstrument(
      {required final double amount,
      required final String paymentInstrumentId,
      required final String paymentMethodId,
      required final PaymentCard? paymentCard}) = _$PaymentInstrumentImpl;

  factory _PaymentInstrument.fromJson(Map<String, dynamic> json) =
      _$PaymentInstrumentImpl.fromJson;

  @override
  double get amount;
  @override
  String get paymentInstrumentId;
  @override
  String get paymentMethodId;
  @override
  PaymentCard? get paymentCard;
  @override
  @JsonKey(ignore: true)
  _$$PaymentInstrumentImplCopyWith<_$PaymentInstrumentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
