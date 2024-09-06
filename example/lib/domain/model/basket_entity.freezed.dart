// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basket_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BasketEntity {
  String get basketId => throw _privateConstructorUsedError;
  List<ProductCartEntity> get productItems =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BasketEntityCopyWith<BasketEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasketEntityCopyWith<$Res> {
  factory $BasketEntityCopyWith(
          BasketEntity value, $Res Function(BasketEntity) then) =
      _$BasketEntityCopyWithImpl<$Res, BasketEntity>;
  @useResult
  $Res call({String basketId, List<ProductCartEntity> productItems});
}

/// @nodoc
class _$BasketEntityCopyWithImpl<$Res, $Val extends BasketEntity>
    implements $BasketEntityCopyWith<$Res> {
  _$BasketEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? basketId = null,
    Object? productItems = null,
  }) {
    return _then(_value.copyWith(
      basketId: null == basketId
          ? _value.basketId
          : basketId // ignore: cast_nullable_to_non_nullable
              as String,
      productItems: null == productItems
          ? _value.productItems
          : productItems // ignore: cast_nullable_to_non_nullable
              as List<ProductCartEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BasketEntityImplCopyWith<$Res>
    implements $BasketEntityCopyWith<$Res> {
  factory _$$BasketEntityImplCopyWith(
          _$BasketEntityImpl value, $Res Function(_$BasketEntityImpl) then) =
      __$$BasketEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String basketId, List<ProductCartEntity> productItems});
}

/// @nodoc
class __$$BasketEntityImplCopyWithImpl<$Res>
    extends _$BasketEntityCopyWithImpl<$Res, _$BasketEntityImpl>
    implements _$$BasketEntityImplCopyWith<$Res> {
  __$$BasketEntityImplCopyWithImpl(
      _$BasketEntityImpl _value, $Res Function(_$BasketEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? basketId = null,
    Object? productItems = null,
  }) {
    return _then(_$BasketEntityImpl(
      basketId: null == basketId
          ? _value.basketId
          : basketId // ignore: cast_nullable_to_non_nullable
              as String,
      productItems: null == productItems
          ? _value._productItems
          : productItems // ignore: cast_nullable_to_non_nullable
              as List<ProductCartEntity>,
    ));
  }
}

/// @nodoc

class _$BasketEntityImpl extends _BasketEntity {
  _$BasketEntityImpl(
      {required this.basketId,
      required final List<ProductCartEntity> productItems})
      : _productItems = productItems,
        super._();

  @override
  final String basketId;
  final List<ProductCartEntity> _productItems;
  @override
  List<ProductCartEntity> get productItems {
    if (_productItems is EqualUnmodifiableListView) return _productItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productItems);
  }

  @override
  String toString() {
    return 'BasketEntity(basketId: $basketId, productItems: $productItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasketEntityImpl &&
            (identical(other.basketId, basketId) ||
                other.basketId == basketId) &&
            const DeepCollectionEquality()
                .equals(other._productItems, _productItems));
  }

  @override
  int get hashCode => Object.hash(runtimeType, basketId,
      const DeepCollectionEquality().hash(_productItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BasketEntityImplCopyWith<_$BasketEntityImpl> get copyWith =>
      __$$BasketEntityImplCopyWithImpl<_$BasketEntityImpl>(this, _$identity);
}

abstract class _BasketEntity extends BasketEntity {
  factory _BasketEntity(
          {required final String basketId,
          required final List<ProductCartEntity> productItems}) =
      _$BasketEntityImpl;
  _BasketEntity._() : super._();

  @override
  String get basketId;
  @override
  List<ProductCartEntity> get productItems;
  @override
  @JsonKey(ignore: true)
  _$$BasketEntityImplCopyWith<_$BasketEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
