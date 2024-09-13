// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'variant_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VariantInfo {
  String? get color => throw _privateConstructorUsedError;
  String? get size => throw _privateConstructorUsedError;
  List<VariationAttributes> get variationAttributes =>
      throw _privateConstructorUsedError;
  List<Variant> get variants => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VariantInfoCopyWith<VariantInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariantInfoCopyWith<$Res> {
  factory $VariantInfoCopyWith(
          VariantInfo value, $Res Function(VariantInfo) then) =
      _$VariantInfoCopyWithImpl<$Res, VariantInfo>;
  @useResult
  $Res call(
      {String? color,
      String? size,
      List<VariationAttributes> variationAttributes,
      List<Variant> variants});
}

/// @nodoc
class _$VariantInfoCopyWithImpl<$Res, $Val extends VariantInfo>
    implements $VariantInfoCopyWith<$Res> {
  _$VariantInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = freezed,
    Object? size = freezed,
    Object? variationAttributes = null,
    Object? variants = null,
  }) {
    return _then(_value.copyWith(
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
      variationAttributes: null == variationAttributes
          ? _value.variationAttributes
          : variationAttributes // ignore: cast_nullable_to_non_nullable
              as List<VariationAttributes>,
      variants: null == variants
          ? _value.variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<Variant>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VariantInfoImplCopyWith<$Res>
    implements $VariantInfoCopyWith<$Res> {
  factory _$$VariantInfoImplCopyWith(
          _$VariantInfoImpl value, $Res Function(_$VariantInfoImpl) then) =
      __$$VariantInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? color,
      String? size,
      List<VariationAttributes> variationAttributes,
      List<Variant> variants});
}

/// @nodoc
class __$$VariantInfoImplCopyWithImpl<$Res>
    extends _$VariantInfoCopyWithImpl<$Res, _$VariantInfoImpl>
    implements _$$VariantInfoImplCopyWith<$Res> {
  __$$VariantInfoImplCopyWithImpl(
      _$VariantInfoImpl _value, $Res Function(_$VariantInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = freezed,
    Object? size = freezed,
    Object? variationAttributes = null,
    Object? variants = null,
  }) {
    return _then(_$VariantInfoImpl(
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
      variationAttributes: null == variationAttributes
          ? _value._variationAttributes
          : variationAttributes // ignore: cast_nullable_to_non_nullable
              as List<VariationAttributes>,
      variants: null == variants
          ? _value._variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<Variant>,
    ));
  }
}

/// @nodoc

class _$VariantInfoImpl implements _VariantInfo {
  _$VariantInfoImpl(
      {this.color,
      this.size,
      required final List<VariationAttributes> variationAttributes,
      required final List<Variant> variants})
      : _variationAttributes = variationAttributes,
        _variants = variants;

  @override
  final String? color;
  @override
  final String? size;
  final List<VariationAttributes> _variationAttributes;
  @override
  List<VariationAttributes> get variationAttributes {
    if (_variationAttributes is EqualUnmodifiableListView)
      return _variationAttributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_variationAttributes);
  }

  final List<Variant> _variants;
  @override
  List<Variant> get variants {
    if (_variants is EqualUnmodifiableListView) return _variants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_variants);
  }

  @override
  String toString() {
    return 'VariantInfo(color: $color, size: $size, variationAttributes: $variationAttributes, variants: $variants)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VariantInfoImpl &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.size, size) || other.size == size) &&
            const DeepCollectionEquality()
                .equals(other._variationAttributes, _variationAttributes) &&
            const DeepCollectionEquality().equals(other._variants, _variants));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      color,
      size,
      const DeepCollectionEquality().hash(_variationAttributes),
      const DeepCollectionEquality().hash(_variants));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VariantInfoImplCopyWith<_$VariantInfoImpl> get copyWith =>
      __$$VariantInfoImplCopyWithImpl<_$VariantInfoImpl>(this, _$identity);
}

abstract class _VariantInfo implements VariantInfo {
  factory _VariantInfo(
      {final String? color,
      final String? size,
      required final List<VariationAttributes> variationAttributes,
      required final List<Variant> variants}) = _$VariantInfoImpl;

  @override
  String? get color;
  @override
  String? get size;
  @override
  List<VariationAttributes> get variationAttributes;
  @override
  List<Variant> get variants;
  @override
  @JsonKey(ignore: true)
  _$$VariantInfoImplCopyWith<_$VariantInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Variant {
  String get id => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  String? get size => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VariantCopyWith<Variant> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariantCopyWith<$Res> {
  factory $VariantCopyWith(Variant value, $Res Function(Variant) then) =
      _$VariantCopyWithImpl<$Res, Variant>;
  @useResult
  $Res call({String id, double price, String? color, String? size});
}

/// @nodoc
class _$VariantCopyWithImpl<$Res, $Val extends Variant>
    implements $VariantCopyWith<$Res> {
  _$VariantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? price = null,
    Object? color = freezed,
    Object? size = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VariantImplCopyWith<$Res> implements $VariantCopyWith<$Res> {
  factory _$$VariantImplCopyWith(
          _$VariantImpl value, $Res Function(_$VariantImpl) then) =
      __$$VariantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, double price, String? color, String? size});
}

/// @nodoc
class __$$VariantImplCopyWithImpl<$Res>
    extends _$VariantCopyWithImpl<$Res, _$VariantImpl>
    implements _$$VariantImplCopyWith<$Res> {
  __$$VariantImplCopyWithImpl(
      _$VariantImpl _value, $Res Function(_$VariantImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? price = null,
    Object? color = freezed,
    Object? size = freezed,
  }) {
    return _then(_$VariantImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$VariantImpl implements _Variant {
  _$VariantImpl({required this.id, required this.price, this.color, this.size});

  @override
  final String id;
  @override
  final double price;
  @override
  final String? color;
  @override
  final String? size;

  @override
  String toString() {
    return 'Variant(id: $id, price: $price, color: $color, size: $size)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VariantImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.size, size) || other.size == size));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, price, color, size);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VariantImplCopyWith<_$VariantImpl> get copyWith =>
      __$$VariantImplCopyWithImpl<_$VariantImpl>(this, _$identity);
}

abstract class _Variant implements Variant {
  factory _Variant(
      {required final String id,
      required final double price,
      final String? color,
      final String? size}) = _$VariantImpl;

  @override
  String get id;
  @override
  double get price;
  @override
  String? get color;
  @override
  String? get size;
  @override
  @JsonKey(ignore: true)
  _$$VariantImplCopyWith<_$VariantImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VariationAttributes {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<ValueKey> get valueKeys => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VariationAttributesCopyWith<VariationAttributes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariationAttributesCopyWith<$Res> {
  factory $VariationAttributesCopyWith(
          VariationAttributes value, $Res Function(VariationAttributes) then) =
      _$VariationAttributesCopyWithImpl<$Res, VariationAttributes>;
  @useResult
  $Res call({String id, String name, List<ValueKey> valueKeys});
}

/// @nodoc
class _$VariationAttributesCopyWithImpl<$Res, $Val extends VariationAttributes>
    implements $VariationAttributesCopyWith<$Res> {
  _$VariationAttributesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? valueKeys = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      valueKeys: null == valueKeys
          ? _value.valueKeys
          : valueKeys // ignore: cast_nullable_to_non_nullable
              as List<ValueKey>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VariationAttributesImplCopyWith<$Res>
    implements $VariationAttributesCopyWith<$Res> {
  factory _$$VariationAttributesImplCopyWith(_$VariationAttributesImpl value,
          $Res Function(_$VariationAttributesImpl) then) =
      __$$VariationAttributesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, List<ValueKey> valueKeys});
}

/// @nodoc
class __$$VariationAttributesImplCopyWithImpl<$Res>
    extends _$VariationAttributesCopyWithImpl<$Res, _$VariationAttributesImpl>
    implements _$$VariationAttributesImplCopyWith<$Res> {
  __$$VariationAttributesImplCopyWithImpl(_$VariationAttributesImpl _value,
      $Res Function(_$VariationAttributesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? valueKeys = null,
  }) {
    return _then(_$VariationAttributesImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      valueKeys: null == valueKeys
          ? _value._valueKeys
          : valueKeys // ignore: cast_nullable_to_non_nullable
              as List<ValueKey>,
    ));
  }
}

/// @nodoc

class _$VariationAttributesImpl implements _VariationAttributes {
  _$VariationAttributesImpl(
      {required this.id,
      required this.name,
      required final List<ValueKey> valueKeys})
      : _valueKeys = valueKeys;

  @override
  final String id;
  @override
  final String name;
  final List<ValueKey> _valueKeys;
  @override
  List<ValueKey> get valueKeys {
    if (_valueKeys is EqualUnmodifiableListView) return _valueKeys;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_valueKeys);
  }

  @override
  String toString() {
    return 'VariationAttributes(id: $id, name: $name, valueKeys: $valueKeys)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VariationAttributesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._valueKeys, _valueKeys));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_valueKeys));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VariationAttributesImplCopyWith<_$VariationAttributesImpl> get copyWith =>
      __$$VariationAttributesImplCopyWithImpl<_$VariationAttributesImpl>(
          this, _$identity);
}

abstract class _VariationAttributes implements VariationAttributes {
  factory _VariationAttributes(
      {required final String id,
      required final String name,
      required final List<ValueKey> valueKeys}) = _$VariationAttributesImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  List<ValueKey> get valueKeys;
  @override
  @JsonKey(ignore: true)
  _$$VariationAttributesImplCopyWith<_$VariationAttributesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ValueKey {
  String get name => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueKeyCopyWith<ValueKey> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueKeyCopyWith<$Res> {
  factory $ValueKeyCopyWith(ValueKey value, $Res Function(ValueKey) then) =
      _$ValueKeyCopyWithImpl<$Res, ValueKey>;
  @useResult
  $Res call({String name, String value});
}

/// @nodoc
class _$ValueKeyCopyWithImpl<$Res, $Val extends ValueKey>
    implements $ValueKeyCopyWith<$Res> {
  _$ValueKeyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ValueKeyImplCopyWith<$Res>
    implements $ValueKeyCopyWith<$Res> {
  factory _$$ValueKeyImplCopyWith(
          _$ValueKeyImpl value, $Res Function(_$ValueKeyImpl) then) =
      __$$ValueKeyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String value});
}

/// @nodoc
class __$$ValueKeyImplCopyWithImpl<$Res>
    extends _$ValueKeyCopyWithImpl<$Res, _$ValueKeyImpl>
    implements _$$ValueKeyImplCopyWith<$Res> {
  __$$ValueKeyImplCopyWithImpl(
      _$ValueKeyImpl _value, $Res Function(_$ValueKeyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_$ValueKeyImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ValueKeyImpl implements _ValueKey {
  _$ValueKeyImpl({required this.name, required this.value});

  @override
  final String name;
  @override
  final String value;

  @override
  String toString() {
    return 'ValueKey(name: $name, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValueKeyImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValueKeyImplCopyWith<_$ValueKeyImpl> get copyWith =>
      __$$ValueKeyImplCopyWithImpl<_$ValueKeyImpl>(this, _$identity);
}

abstract class _ValueKey implements ValueKey {
  factory _ValueKey({required final String name, required final String value}) =
      _$ValueKeyImpl;

  @override
  String get name;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$ValueKeyImplCopyWith<_$ValueKeyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
