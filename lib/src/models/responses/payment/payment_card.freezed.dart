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
  int get expirationYear => throw _privateConstructorUsedError;
  int get expirationMonth => throw _privateConstructorUsedError;
  int get validFromMonth => throw _privateConstructorUsedError;
  int get validFromYear => throw _privateConstructorUsedError;
  String get issueNumber => throw _privateConstructorUsedError;
  String get maskedNumber => throw _privateConstructorUsedError;
  String get holder => throw _privateConstructorUsedError;
  String get cardType => throw _privateConstructorUsedError;

  /// Serializes this PaymentCard to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentCardCopyWith<PaymentCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentCardCopyWith<$Res> {
  factory $PaymentCardCopyWith(
          PaymentCard value, $Res Function(PaymentCard) then) =
      _$PaymentCardCopyWithImpl<$Res, PaymentCard>;
  @useResult
  $Res call(
      {int expirationYear,
      int expirationMonth,
      int validFromMonth,
      int validFromYear,
      String issueNumber,
      String maskedNumber,
      String holder,
      String cardType});
}

/// @nodoc
class _$PaymentCardCopyWithImpl<$Res, $Val extends PaymentCard>
    implements $PaymentCardCopyWith<$Res> {
  _$PaymentCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expirationYear = null,
    Object? expirationMonth = null,
    Object? validFromMonth = null,
    Object? validFromYear = null,
    Object? issueNumber = null,
    Object? maskedNumber = null,
    Object? holder = null,
    Object? cardType = null,
  }) {
    return _then(_value.copyWith(
      expirationYear: null == expirationYear
          ? _value.expirationYear
          : expirationYear // ignore: cast_nullable_to_non_nullable
              as int,
      expirationMonth: null == expirationMonth
          ? _value.expirationMonth
          : expirationMonth // ignore: cast_nullable_to_non_nullable
              as int,
      validFromMonth: null == validFromMonth
          ? _value.validFromMonth
          : validFromMonth // ignore: cast_nullable_to_non_nullable
              as int,
      validFromYear: null == validFromYear
          ? _value.validFromYear
          : validFromYear // ignore: cast_nullable_to_non_nullable
              as int,
      issueNumber: null == issueNumber
          ? _value.issueNumber
          : issueNumber // ignore: cast_nullable_to_non_nullable
              as String,
      maskedNumber: null == maskedNumber
          ? _value.maskedNumber
          : maskedNumber // ignore: cast_nullable_to_non_nullable
              as String,
      holder: null == holder
          ? _value.holder
          : holder // ignore: cast_nullable_to_non_nullable
              as String,
      cardType: null == cardType
          ? _value.cardType
          : cardType // ignore: cast_nullable_to_non_nullable
              as String,
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
  $Res call(
      {int expirationYear,
      int expirationMonth,
      int validFromMonth,
      int validFromYear,
      String issueNumber,
      String maskedNumber,
      String holder,
      String cardType});
}

/// @nodoc
class __$$PaymentCardImplCopyWithImpl<$Res>
    extends _$PaymentCardCopyWithImpl<$Res, _$PaymentCardImpl>
    implements _$$PaymentCardImplCopyWith<$Res> {
  __$$PaymentCardImplCopyWithImpl(
      _$PaymentCardImpl _value, $Res Function(_$PaymentCardImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expirationYear = null,
    Object? expirationMonth = null,
    Object? validFromMonth = null,
    Object? validFromYear = null,
    Object? issueNumber = null,
    Object? maskedNumber = null,
    Object? holder = null,
    Object? cardType = null,
  }) {
    return _then(_$PaymentCardImpl(
      expirationYear: null == expirationYear
          ? _value.expirationYear
          : expirationYear // ignore: cast_nullable_to_non_nullable
              as int,
      expirationMonth: null == expirationMonth
          ? _value.expirationMonth
          : expirationMonth // ignore: cast_nullable_to_non_nullable
              as int,
      validFromMonth: null == validFromMonth
          ? _value.validFromMonth
          : validFromMonth // ignore: cast_nullable_to_non_nullable
              as int,
      validFromYear: null == validFromYear
          ? _value.validFromYear
          : validFromYear // ignore: cast_nullable_to_non_nullable
              as int,
      issueNumber: null == issueNumber
          ? _value.issueNumber
          : issueNumber // ignore: cast_nullable_to_non_nullable
              as String,
      maskedNumber: null == maskedNumber
          ? _value.maskedNumber
          : maskedNumber // ignore: cast_nullable_to_non_nullable
              as String,
      holder: null == holder
          ? _value.holder
          : holder // ignore: cast_nullable_to_non_nullable
              as String,
      cardType: null == cardType
          ? _value.cardType
          : cardType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentCardImpl implements _PaymentCard {
  _$PaymentCardImpl(
      {required this.expirationYear,
      required this.expirationMonth,
      required this.validFromMonth,
      required this.validFromYear,
      required this.issueNumber,
      required this.maskedNumber,
      required this.holder,
      required this.cardType});

  factory _$PaymentCardImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentCardImplFromJson(json);

  @override
  final int expirationYear;
  @override
  final int expirationMonth;
  @override
  final int validFromMonth;
  @override
  final int validFromYear;
  @override
  final String issueNumber;
  @override
  final String maskedNumber;
  @override
  final String holder;
  @override
  final String cardType;

  @override
  String toString() {
    return 'PaymentCard(expirationYear: $expirationYear, expirationMonth: $expirationMonth, validFromMonth: $validFromMonth, validFromYear: $validFromYear, issueNumber: $issueNumber, maskedNumber: $maskedNumber, holder: $holder, cardType: $cardType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentCardImpl &&
            (identical(other.expirationYear, expirationYear) ||
                other.expirationYear == expirationYear) &&
            (identical(other.expirationMonth, expirationMonth) ||
                other.expirationMonth == expirationMonth) &&
            (identical(other.validFromMonth, validFromMonth) ||
                other.validFromMonth == validFromMonth) &&
            (identical(other.validFromYear, validFromYear) ||
                other.validFromYear == validFromYear) &&
            (identical(other.issueNumber, issueNumber) ||
                other.issueNumber == issueNumber) &&
            (identical(other.maskedNumber, maskedNumber) ||
                other.maskedNumber == maskedNumber) &&
            (identical(other.holder, holder) || other.holder == holder) &&
            (identical(other.cardType, cardType) ||
                other.cardType == cardType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      expirationYear,
      expirationMonth,
      validFromMonth,
      validFromYear,
      issueNumber,
      maskedNumber,
      holder,
      cardType);

  /// Create a copy of PaymentCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      {required final int expirationYear,
      required final int expirationMonth,
      required final int validFromMonth,
      required final int validFromYear,
      required final String issueNumber,
      required final String maskedNumber,
      required final String holder,
      required final String cardType}) = _$PaymentCardImpl;

  factory _PaymentCard.fromJson(Map<String, dynamic> json) =
      _$PaymentCardImpl.fromJson;

  @override
  int get expirationYear;
  @override
  int get expirationMonth;
  @override
  int get validFromMonth;
  @override
  int get validFromYear;
  @override
  String get issueNumber;
  @override
  String get maskedNumber;
  @override
  String get holder;
  @override
  String get cardType;

  /// Create a copy of PaymentCard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentCardImplCopyWith<_$PaymentCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
