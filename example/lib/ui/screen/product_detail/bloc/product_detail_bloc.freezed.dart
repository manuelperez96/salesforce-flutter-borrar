// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int quantity) updateQuantity,
    required TResult Function(String color) updateSelectedColor,
    required TResult Function(String size) updateSelectedSize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int quantity)? updateQuantity,
    TResult? Function(String color)? updateSelectedColor,
    TResult? Function(String size)? updateSelectedSize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int quantity)? updateQuantity,
    TResult Function(String color)? updateSelectedColor,
    TResult Function(String size)? updateSelectedSize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateQuantity value) updateQuantity,
    required TResult Function(_SelectedColor value) updateSelectedColor,
    required TResult Function(_SelectedSize value) updateSelectedSize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UpdateQuantity value)? updateQuantity,
    TResult? Function(_SelectedColor value)? updateSelectedColor,
    TResult? Function(_SelectedSize value)? updateSelectedSize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateQuantity value)? updateQuantity,
    TResult Function(_SelectedColor value)? updateSelectedColor,
    TResult Function(_SelectedSize value)? updateSelectedSize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailEventCopyWith<$Res> {
  factory $ProductDetailEventCopyWith(
          ProductDetailEvent value, $Res Function(ProductDetailEvent) then) =
      _$ProductDetailEventCopyWithImpl<$Res, ProductDetailEvent>;
}

/// @nodoc
class _$ProductDetailEventCopyWithImpl<$Res, $Val extends ProductDetailEvent>
    implements $ProductDetailEventCopyWith<$Res> {
  _$ProductDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$ProductDetailEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'ProductDetailEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int quantity) updateQuantity,
    required TResult Function(String color) updateSelectedColor,
    required TResult Function(String size) updateSelectedSize,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int quantity)? updateQuantity,
    TResult? Function(String color)? updateSelectedColor,
    TResult? Function(String size)? updateSelectedSize,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int quantity)? updateQuantity,
    TResult Function(String color)? updateSelectedColor,
    TResult Function(String size)? updateSelectedSize,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateQuantity value) updateQuantity,
    required TResult Function(_SelectedColor value) updateSelectedColor,
    required TResult Function(_SelectedSize value) updateSelectedSize,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UpdateQuantity value)? updateQuantity,
    TResult? Function(_SelectedColor value)? updateSelectedColor,
    TResult? Function(_SelectedSize value)? updateSelectedSize,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateQuantity value)? updateQuantity,
    TResult Function(_SelectedColor value)? updateSelectedColor,
    TResult Function(_SelectedSize value)? updateSelectedSize,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ProductDetailEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$UpdateQuantityImplCopyWith<$Res> {
  factory _$$UpdateQuantityImplCopyWith(_$UpdateQuantityImpl value,
          $Res Function(_$UpdateQuantityImpl) then) =
      __$$UpdateQuantityImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int quantity});
}

/// @nodoc
class __$$UpdateQuantityImplCopyWithImpl<$Res>
    extends _$ProductDetailEventCopyWithImpl<$Res, _$UpdateQuantityImpl>
    implements _$$UpdateQuantityImplCopyWith<$Res> {
  __$$UpdateQuantityImplCopyWithImpl(
      _$UpdateQuantityImpl _value, $Res Function(_$UpdateQuantityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = null,
  }) {
    return _then(_$UpdateQuantityImpl(
      null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateQuantityImpl implements _UpdateQuantity {
  const _$UpdateQuantityImpl(this.quantity);

  @override
  final int quantity;

  @override
  String toString() {
    return 'ProductDetailEvent.updateQuantity(quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateQuantityImpl &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateQuantityImplCopyWith<_$UpdateQuantityImpl> get copyWith =>
      __$$UpdateQuantityImplCopyWithImpl<_$UpdateQuantityImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int quantity) updateQuantity,
    required TResult Function(String color) updateSelectedColor,
    required TResult Function(String size) updateSelectedSize,
  }) {
    return updateQuantity(quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int quantity)? updateQuantity,
    TResult? Function(String color)? updateSelectedColor,
    TResult? Function(String size)? updateSelectedSize,
  }) {
    return updateQuantity?.call(quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int quantity)? updateQuantity,
    TResult Function(String color)? updateSelectedColor,
    TResult Function(String size)? updateSelectedSize,
    required TResult orElse(),
  }) {
    if (updateQuantity != null) {
      return updateQuantity(quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateQuantity value) updateQuantity,
    required TResult Function(_SelectedColor value) updateSelectedColor,
    required TResult Function(_SelectedSize value) updateSelectedSize,
  }) {
    return updateQuantity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UpdateQuantity value)? updateQuantity,
    TResult? Function(_SelectedColor value)? updateSelectedColor,
    TResult? Function(_SelectedSize value)? updateSelectedSize,
  }) {
    return updateQuantity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateQuantity value)? updateQuantity,
    TResult Function(_SelectedColor value)? updateSelectedColor,
    TResult Function(_SelectedSize value)? updateSelectedSize,
    required TResult orElse(),
  }) {
    if (updateQuantity != null) {
      return updateQuantity(this);
    }
    return orElse();
  }
}

abstract class _UpdateQuantity implements ProductDetailEvent {
  const factory _UpdateQuantity(final int quantity) = _$UpdateQuantityImpl;

  int get quantity;
  @JsonKey(ignore: true)
  _$$UpdateQuantityImplCopyWith<_$UpdateQuantityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectedColorImplCopyWith<$Res> {
  factory _$$SelectedColorImplCopyWith(
          _$SelectedColorImpl value, $Res Function(_$SelectedColorImpl) then) =
      __$$SelectedColorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String color});
}

/// @nodoc
class __$$SelectedColorImplCopyWithImpl<$Res>
    extends _$ProductDetailEventCopyWithImpl<$Res, _$SelectedColorImpl>
    implements _$$SelectedColorImplCopyWith<$Res> {
  __$$SelectedColorImplCopyWithImpl(
      _$SelectedColorImpl _value, $Res Function(_$SelectedColorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
  }) {
    return _then(_$SelectedColorImpl(
      null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SelectedColorImpl implements _SelectedColor {
  const _$SelectedColorImpl(this.color);

  @override
  final String color;

  @override
  String toString() {
    return 'ProductDetailEvent.updateSelectedColor(color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedColorImpl &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedColorImplCopyWith<_$SelectedColorImpl> get copyWith =>
      __$$SelectedColorImplCopyWithImpl<_$SelectedColorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int quantity) updateQuantity,
    required TResult Function(String color) updateSelectedColor,
    required TResult Function(String size) updateSelectedSize,
  }) {
    return updateSelectedColor(color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int quantity)? updateQuantity,
    TResult? Function(String color)? updateSelectedColor,
    TResult? Function(String size)? updateSelectedSize,
  }) {
    return updateSelectedColor?.call(color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int quantity)? updateQuantity,
    TResult Function(String color)? updateSelectedColor,
    TResult Function(String size)? updateSelectedSize,
    required TResult orElse(),
  }) {
    if (updateSelectedColor != null) {
      return updateSelectedColor(color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateQuantity value) updateQuantity,
    required TResult Function(_SelectedColor value) updateSelectedColor,
    required TResult Function(_SelectedSize value) updateSelectedSize,
  }) {
    return updateSelectedColor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UpdateQuantity value)? updateQuantity,
    TResult? Function(_SelectedColor value)? updateSelectedColor,
    TResult? Function(_SelectedSize value)? updateSelectedSize,
  }) {
    return updateSelectedColor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateQuantity value)? updateQuantity,
    TResult Function(_SelectedColor value)? updateSelectedColor,
    TResult Function(_SelectedSize value)? updateSelectedSize,
    required TResult orElse(),
  }) {
    if (updateSelectedColor != null) {
      return updateSelectedColor(this);
    }
    return orElse();
  }
}

abstract class _SelectedColor implements ProductDetailEvent {
  const factory _SelectedColor(final String color) = _$SelectedColorImpl;

  String get color;
  @JsonKey(ignore: true)
  _$$SelectedColorImplCopyWith<_$SelectedColorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectedSizeImplCopyWith<$Res> {
  factory _$$SelectedSizeImplCopyWith(
          _$SelectedSizeImpl value, $Res Function(_$SelectedSizeImpl) then) =
      __$$SelectedSizeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String size});
}

/// @nodoc
class __$$SelectedSizeImplCopyWithImpl<$Res>
    extends _$ProductDetailEventCopyWithImpl<$Res, _$SelectedSizeImpl>
    implements _$$SelectedSizeImplCopyWith<$Res> {
  __$$SelectedSizeImplCopyWithImpl(
      _$SelectedSizeImpl _value, $Res Function(_$SelectedSizeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = null,
  }) {
    return _then(_$SelectedSizeImpl(
      null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SelectedSizeImpl implements _SelectedSize {
  const _$SelectedSizeImpl(this.size);

  @override
  final String size;

  @override
  String toString() {
    return 'ProductDetailEvent.updateSelectedSize(size: $size)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedSizeImpl &&
            (identical(other.size, size) || other.size == size));
  }

  @override
  int get hashCode => Object.hash(runtimeType, size);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedSizeImplCopyWith<_$SelectedSizeImpl> get copyWith =>
      __$$SelectedSizeImplCopyWithImpl<_$SelectedSizeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int quantity) updateQuantity,
    required TResult Function(String color) updateSelectedColor,
    required TResult Function(String size) updateSelectedSize,
  }) {
    return updateSelectedSize(size);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int quantity)? updateQuantity,
    TResult? Function(String color)? updateSelectedColor,
    TResult? Function(String size)? updateSelectedSize,
  }) {
    return updateSelectedSize?.call(size);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int quantity)? updateQuantity,
    TResult Function(String color)? updateSelectedColor,
    TResult Function(String size)? updateSelectedSize,
    required TResult orElse(),
  }) {
    if (updateSelectedSize != null) {
      return updateSelectedSize(size);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateQuantity value) updateQuantity,
    required TResult Function(_SelectedColor value) updateSelectedColor,
    required TResult Function(_SelectedSize value) updateSelectedSize,
  }) {
    return updateSelectedSize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UpdateQuantity value)? updateQuantity,
    TResult? Function(_SelectedColor value)? updateSelectedColor,
    TResult? Function(_SelectedSize value)? updateSelectedSize,
  }) {
    return updateSelectedSize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateQuantity value)? updateQuantity,
    TResult Function(_SelectedColor value)? updateSelectedColor,
    TResult Function(_SelectedSize value)? updateSelectedSize,
    required TResult orElse(),
  }) {
    if (updateSelectedSize != null) {
      return updateSelectedSize(this);
    }
    return orElse();
  }
}

abstract class _SelectedSize implements ProductDetailEvent {
  const factory _SelectedSize(final String size) = _$SelectedSizeImpl;

  String get size;
  @JsonKey(ignore: true)
  _$$SelectedSizeImplCopyWith<_$SelectedSizeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductDetailState {
  String get initialProductId => throw _privateConstructorUsedError;
  ProductDetailStatus get status => throw _privateConstructorUsedError;
  Product? get initialProduct => throw _privateConstructorUsedError;
  int? get productQuantity => throw _privateConstructorUsedError;
  String? get selectedColor => throw _privateConstructorUsedError;
  String? get selectedSize => throw _privateConstructorUsedError;
  String? get selectedProductId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String initialProductId,
            ProductDetailStatus status,
            Product? initialProduct,
            int? productQuantity,
            String? selectedColor,
            String? selectedSize,
            String? selectedProductId)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String initialProductId,
            ProductDetailStatus status,
            Product? initialProduct,
            int? productQuantity,
            String? selectedColor,
            String? selectedSize,
            String? selectedProductId)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String initialProductId,
            ProductDetailStatus status,
            Product? initialProduct,
            int? productQuantity,
            String? selectedColor,
            String? selectedSize,
            String? selectedProductId)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductDetailStateCopyWith<ProductDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailStateCopyWith<$Res> {
  factory $ProductDetailStateCopyWith(
          ProductDetailState value, $Res Function(ProductDetailState) then) =
      _$ProductDetailStateCopyWithImpl<$Res, ProductDetailState>;
  @useResult
  $Res call(
      {String initialProductId,
      ProductDetailStatus status,
      Product? initialProduct,
      int? productQuantity,
      String? selectedColor,
      String? selectedSize,
      String? selectedProductId});

  $ProductCopyWith<$Res>? get initialProduct;
}

/// @nodoc
class _$ProductDetailStateCopyWithImpl<$Res, $Val extends ProductDetailState>
    implements $ProductDetailStateCopyWith<$Res> {
  _$ProductDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialProductId = null,
    Object? status = null,
    Object? initialProduct = freezed,
    Object? productQuantity = freezed,
    Object? selectedColor = freezed,
    Object? selectedSize = freezed,
    Object? selectedProductId = freezed,
  }) {
    return _then(_value.copyWith(
      initialProductId: null == initialProductId
          ? _value.initialProductId
          : initialProductId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProductDetailStatus,
      initialProduct: freezed == initialProduct
          ? _value.initialProduct
          : initialProduct // ignore: cast_nullable_to_non_nullable
              as Product?,
      productQuantity: freezed == productQuantity
          ? _value.productQuantity
          : productQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedColor: freezed == selectedColor
          ? _value.selectedColor
          : selectedColor // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedSize: freezed == selectedSize
          ? _value.selectedSize
          : selectedSize // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedProductId: freezed == selectedProductId
          ? _value.selectedProductId
          : selectedProductId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res>? get initialProduct {
    if (_value.initialProduct == null) {
      return null;
    }

    return $ProductCopyWith<$Res>(_value.initialProduct!, (value) {
      return _then(_value.copyWith(initialProduct: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $ProductDetailStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String initialProductId,
      ProductDetailStatus status,
      Product? initialProduct,
      int? productQuantity,
      String? selectedColor,
      String? selectedSize,
      String? selectedProductId});

  @override
  $ProductCopyWith<$Res>? get initialProduct;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ProductDetailStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialProductId = null,
    Object? status = null,
    Object? initialProduct = freezed,
    Object? productQuantity = freezed,
    Object? selectedColor = freezed,
    Object? selectedSize = freezed,
    Object? selectedProductId = freezed,
  }) {
    return _then(_$InitialImpl(
      initialProductId: null == initialProductId
          ? _value.initialProductId
          : initialProductId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProductDetailStatus,
      initialProduct: freezed == initialProduct
          ? _value.initialProduct
          : initialProduct // ignore: cast_nullable_to_non_nullable
              as Product?,
      productQuantity: freezed == productQuantity
          ? _value.productQuantity
          : productQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedColor: freezed == selectedColor
          ? _value.selectedColor
          : selectedColor // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedSize: freezed == selectedSize
          ? _value.selectedSize
          : selectedSize // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedProductId: freezed == selectedProductId
          ? _value.selectedProductId
          : selectedProductId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.initialProductId,
      this.status = ProductDetailStatus.loading,
      this.initialProduct,
      this.productQuantity,
      this.selectedColor,
      this.selectedSize,
      this.selectedProductId});

  @override
  final String initialProductId;
  @override
  @JsonKey()
  final ProductDetailStatus status;
  @override
  final Product? initialProduct;
  @override
  final int? productQuantity;
  @override
  final String? selectedColor;
  @override
  final String? selectedSize;
  @override
  final String? selectedProductId;

  @override
  String toString() {
    return 'ProductDetailState.initial(initialProductId: $initialProductId, status: $status, initialProduct: $initialProduct, productQuantity: $productQuantity, selectedColor: $selectedColor, selectedSize: $selectedSize, selectedProductId: $selectedProductId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.initialProductId, initialProductId) ||
                other.initialProductId == initialProductId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.initialProduct, initialProduct) ||
                other.initialProduct == initialProduct) &&
            (identical(other.productQuantity, productQuantity) ||
                other.productQuantity == productQuantity) &&
            (identical(other.selectedColor, selectedColor) ||
                other.selectedColor == selectedColor) &&
            (identical(other.selectedSize, selectedSize) ||
                other.selectedSize == selectedSize) &&
            (identical(other.selectedProductId, selectedProductId) ||
                other.selectedProductId == selectedProductId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      initialProductId,
      status,
      initialProduct,
      productQuantity,
      selectedColor,
      selectedSize,
      selectedProductId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String initialProductId,
            ProductDetailStatus status,
            Product? initialProduct,
            int? productQuantity,
            String? selectedColor,
            String? selectedSize,
            String? selectedProductId)
        initial,
  }) {
    return initial(initialProductId, status, initialProduct, productQuantity,
        selectedColor, selectedSize, selectedProductId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String initialProductId,
            ProductDetailStatus status,
            Product? initialProduct,
            int? productQuantity,
            String? selectedColor,
            String? selectedSize,
            String? selectedProductId)?
        initial,
  }) {
    return initial?.call(initialProductId, status, initialProduct,
        productQuantity, selectedColor, selectedSize, selectedProductId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String initialProductId,
            ProductDetailStatus status,
            Product? initialProduct,
            int? productQuantity,
            String? selectedColor,
            String? selectedSize,
            String? selectedProductId)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(initialProductId, status, initialProduct, productQuantity,
          selectedColor, selectedSize, selectedProductId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProductDetailState {
  const factory _Initial(
      {required final String initialProductId,
      final ProductDetailStatus status,
      final Product? initialProduct,
      final int? productQuantity,
      final String? selectedColor,
      final String? selectedSize,
      final String? selectedProductId}) = _$InitialImpl;

  @override
  String get initialProductId;
  @override
  ProductDetailStatus get status;
  @override
  Product? get initialProduct;
  @override
  int? get productQuantity;
  @override
  String? get selectedColor;
  @override
  String? get selectedSize;
  @override
  String? get selectedProductId;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
