// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_preview_by_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductPreviewByCategory {
  String get id => throw _privateConstructorUsedError;
  String get productName => throw _privateConstructorUsedError;
  Image get image => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  String get categoryId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductPreviewByCategoryCopyWith<ProductPreviewByCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductPreviewByCategoryCopyWith<$Res> {
  factory $ProductPreviewByCategoryCopyWith(ProductPreviewByCategory value,
          $Res Function(ProductPreviewByCategory) then) =
      _$ProductPreviewByCategoryCopyWithImpl<$Res, ProductPreviewByCategory>;
  @useResult
  $Res call(
      {String id,
      String productName,
      Image image,
      double price,
      String currency,
      String categoryId});

  $ImageCopyWith<$Res> get image;
}

/// @nodoc
class _$ProductPreviewByCategoryCopyWithImpl<$Res,
        $Val extends ProductPreviewByCategory>
    implements $ProductPreviewByCategoryCopyWith<$Res> {
  _$ProductPreviewByCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productName = null,
    Object? image = null,
    Object? price = null,
    Object? currency = null,
    Object? categoryId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Image,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageCopyWith<$Res> get image {
    return $ImageCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductPreviewByCategoryImplCopyWith<$Res>
    implements $ProductPreviewByCategoryCopyWith<$Res> {
  factory _$$ProductPreviewByCategoryImplCopyWith(
          _$ProductPreviewByCategoryImpl value,
          $Res Function(_$ProductPreviewByCategoryImpl) then) =
      __$$ProductPreviewByCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String productName,
      Image image,
      double price,
      String currency,
      String categoryId});

  @override
  $ImageCopyWith<$Res> get image;
}

/// @nodoc
class __$$ProductPreviewByCategoryImplCopyWithImpl<$Res>
    extends _$ProductPreviewByCategoryCopyWithImpl<$Res,
        _$ProductPreviewByCategoryImpl>
    implements _$$ProductPreviewByCategoryImplCopyWith<$Res> {
  __$$ProductPreviewByCategoryImplCopyWithImpl(
      _$ProductPreviewByCategoryImpl _value,
      $Res Function(_$ProductPreviewByCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productName = null,
    Object? image = null,
    Object? price = null,
    Object? currency = null,
    Object? categoryId = null,
  }) {
    return _then(_$ProductPreviewByCategoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Image,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProductPreviewByCategoryImpl implements _ProductPreviewByCategory {
  _$ProductPreviewByCategoryImpl(
      {required this.id,
      required this.productName,
      required this.image,
      required this.price,
      required this.currency,
      required this.categoryId});

  @override
  final String id;
  @override
  final String productName;
  @override
  final Image image;
  @override
  final double price;
  @override
  final String currency;
  @override
  final String categoryId;

  @override
  String toString() {
    return 'ProductPreviewByCategory(id: $id, productName: $productName, image: $image, price: $price, currency: $currency, categoryId: $categoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductPreviewByCategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, productName, image, price, currency, categoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductPreviewByCategoryImplCopyWith<_$ProductPreviewByCategoryImpl>
      get copyWith => __$$ProductPreviewByCategoryImplCopyWithImpl<
          _$ProductPreviewByCategoryImpl>(this, _$identity);
}

abstract class _ProductPreviewByCategory implements ProductPreviewByCategory {
  factory _ProductPreviewByCategory(
      {required final String id,
      required final String productName,
      required final Image image,
      required final double price,
      required final String currency,
      required final String categoryId}) = _$ProductPreviewByCategoryImpl;

  @override
  String get id;
  @override
  String get productName;
  @override
  Image get image;
  @override
  double get price;
  @override
  String get currency;
  @override
  String get categoryId;
  @override
  @JsonKey(ignore: true)
  _$$ProductPreviewByCategoryImplCopyWith<_$ProductPreviewByCategoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}
