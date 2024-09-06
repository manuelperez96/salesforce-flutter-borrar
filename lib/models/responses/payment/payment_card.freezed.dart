// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentCard _$PaymentCardFromJson(Map<String, dynamic> json) {
  return _PaymentCard.fromJson(json);
}

/// @nodoc
mixin _$PaymentCard {
  String get cardType => throw _privateConstructorUsedError;
  bool get creditCardExpired => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentCardCopyWith<PaymentCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentCardCopyWith<$Res> {
  factory $PaymentCardCopyWith(
          PaymentCard value, $Res Function(PaymentCard) then) =
      _$PaymentCardCopyWithImpl<$Res, PaymentCard>;
  @useResult
  $Res call({String cardType, bool creditCardExpired});
}

/// @nodoc
class _$PaymentCardCopyWithImpl<$Res, $Val extends PaymentCard>
    implements $PaymentCardCopyWith<$Res> {
  _$PaymentCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardType = null,
    Object? creditCardExpired = null,
  }) {
    return _then(_value.copyWith(
      cardType: null == cardType
          ? _value.cardType
          : cardType // ignore: cast_nullable_to_non_nullable
              as String,
      creditCardExpired: null == creditCardExpired
          ? _value.creditCardExpired
          : creditCardExpired // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentCardImplCopyWith<$Res>
    implements $PaymentCardCopyWith<$Res> {
  factory _$$PaymentCardImplCopyWith(
          _$PaymentCardImpl value, $Res Function(_$PaymentCardImpl) then) =
      __$$PaymentCardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String cardType, bool creditCardExpired});
}

/// @nodoc
class __$$PaymentCardImplCopyWithImpl<$Res>
    extends _$PaymentCardCopyWithImpl<$Res, _$PaymentCardImpl>
    implements _$$PaymentCardImplCopyWith<$Res> {
  __$$PaymentCardImplCopyWithImpl(
      _$PaymentCardImpl _value, $Res Function(_$PaymentCardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardType = null,
    Object? creditCardExpired = null,
  }) {
    return _then(_$PaymentCardImpl(
      cardType: null == cardType
          ? _value.cardType
          : cardType // ignore: cast_nullable_to_non_nullable
              as String,
      creditCardExpired: null == creditCardExpired
          ? _value.creditCardExpired
          : creditCardExpired // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentCardImpl implements _PaymentCard {
  _$PaymentCardImpl({required this.cardType, required this.creditCardExpired});

  factory _$PaymentCardImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentCardImplFromJson(json);

  @override
  final String cardType;
  @override
  final bool creditCardExpired;

  @override
  String toString() {
    return 'PaymentCard(cardType: $cardType, creditCardExpired: $creditCardExpired)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentCardImpl &&
            (identical(other.cardType, cardType) ||
                other.cardType == cardType) &&
            (identical(other.creditCardExpired, creditCardExpired) ||
                other.creditCardExpired == creditCardExpired));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cardType, creditCardExpired);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentCardImplCopyWith<_$PaymentCardImpl> get copyWith =>
      __$$PaymentCardImplCopyWithImpl<_$PaymentCardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentCardImplToJson(
      this,
    );
  }
}

abstract class _PaymentCard implements PaymentCard {
  factory _PaymentCard(
      {required final String cardType,
      required final bool creditCardExpired}) = _$PaymentCardImpl;

  factory _PaymentCard.fromJson(Map<String, dynamic> json) =
      _$PaymentCardImpl.fromJson;

  @override
  String get cardType;
  @override
  bool get creditCardExpired;
  @override
  @JsonKey(ignore: true)
  _$$PaymentCardImplCopyWith<_$PaymentCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
