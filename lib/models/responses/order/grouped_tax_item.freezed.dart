// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grouped_tax_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GroupedTaxItem _$GroupedTaxItemFromJson(Map<String, dynamic> json) {
  return _GroupedTaxItem.fromJson(json);
}

/// @nodoc
mixin _$GroupedTaxItem {
  String get type => throw _privateConstructorUsedError;
  double get taxRate => throw _privateConstructorUsedError;
  double get taxValue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupedTaxItemCopyWith<GroupedTaxItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupedTaxItemCopyWith<$Res> {
  factory $GroupedTaxItemCopyWith(
          GroupedTaxItem value, $Res Function(GroupedTaxItem) then) =
      _$GroupedTaxItemCopyWithImpl<$Res, GroupedTaxItem>;
  @useResult
  $Res call({String type, double taxRate, double taxValue});
}

/// @nodoc
class _$GroupedTaxItemCopyWithImpl<$Res, $Val extends GroupedTaxItem>
    implements $GroupedTaxItemCopyWith<$Res> {
  _$GroupedTaxItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? taxRate = null,
    Object? taxValue = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      taxRate: null == taxRate
          ? _value.taxRate
          : taxRate // ignore: cast_nullable_to_non_nullable
              as double,
      taxValue: null == taxValue
          ? _value.taxValue
          : taxValue // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GroupedTaxItemImplCopyWith<$Res>
    implements $GroupedTaxItemCopyWith<$Res> {
  factory _$$GroupedTaxItemImplCopyWith(_$GroupedTaxItemImpl value,
          $Res Function(_$GroupedTaxItemImpl) then) =
      __$$GroupedTaxItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, double taxRate, double taxValue});
}

/// @nodoc
class __$$GroupedTaxItemImplCopyWithImpl<$Res>
    extends _$GroupedTaxItemCopyWithImpl<$Res, _$GroupedTaxItemImpl>
    implements _$$GroupedTaxItemImplCopyWith<$Res> {
  __$$GroupedTaxItemImplCopyWithImpl(
      _$GroupedTaxItemImpl _value, $Res Function(_$GroupedTaxItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? taxRate = null,
    Object? taxValue = null,
  }) {
    return _then(_$GroupedTaxItemImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      taxRate: null == taxRate
          ? _value.taxRate
          : taxRate // ignore: cast_nullable_to_non_nullable
              as double,
      taxValue: null == taxValue
          ? _value.taxValue
          : taxValue // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupedTaxItemImpl implements _GroupedTaxItem {
  _$GroupedTaxItemImpl(
      {required this.type, required this.taxRate, required this.taxValue});

  factory _$GroupedTaxItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupedTaxItemImplFromJson(json);

  @override
  final String type;
  @override
  final double taxRate;
  @override
  final double taxValue;

  @override
  String toString() {
    return 'GroupedTaxItem(type: $type, taxRate: $taxRate, taxValue: $taxValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupedTaxItemImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.taxRate, taxRate) || other.taxRate == taxRate) &&
            (identical(other.taxValue, taxValue) ||
                other.taxValue == taxValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, taxRate, taxValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupedTaxItemImplCopyWith<_$GroupedTaxItemImpl> get copyWith =>
      __$$GroupedTaxItemImplCopyWithImpl<_$GroupedTaxItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupedTaxItemImplToJson(
      this,
    );
  }
}

abstract class _GroupedTaxItem implements GroupedTaxItem {
  factory _GroupedTaxItem(
      {required final String type,
      required final double taxRate,
      required final double taxValue}) = _$GroupedTaxItemImpl;

  factory _GroupedTaxItem.fromJson(Map<String, dynamic> json) =
      _$GroupedTaxItemImpl.fromJson;

  @override
  String get type;
  @override
  double get taxRate;
  @override
  double get taxValue;
  @override
  @JsonKey(ignore: true)
  _$$GroupedTaxItemImplCopyWith<_$GroupedTaxItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
