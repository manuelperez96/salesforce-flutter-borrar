// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Product {
  String get id => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  List<ImageBundle> get images => throw _privateConstructorUsedError;
  int get availableStock => throw _privateConstructorUsedError;
  int get stock => throw _privateConstructorUsedError;
  int get minOrderQuantity => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double get pricePerUnit => throw _privateConstructorUsedError;
  String get slugUrl => throw _privateConstructorUsedError;
  Set<ProductType> get productTypes => throw _privateConstructorUsedError;
  String? get shortDescription => throw _privateConstructorUsedError;
  String? get longDescription => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get brand => throw _privateConstructorUsedError;
  VariantInfo? get variantInfo => throw _privateConstructorUsedError;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {String id,
      String currency,
      List<ImageBundle> images,
      int availableStock,
      int stock,
      int minOrderQuantity,
      String name,
      double price,
      double pricePerUnit,
      String slugUrl,
      Set<ProductType> productTypes,
      String? shortDescription,
      String? longDescription,
      String? category,
      String? brand,
      VariantInfo? variantInfo});

  $VariantInfoCopyWith<$Res>? get variantInfo;
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? currency = null,
    Object? images = null,
    Object? availableStock = null,
    Object? stock = null,
    Object? minOrderQuantity = null,
    Object? name = null,
    Object? price = null,
    Object? pricePerUnit = null,
    Object? slugUrl = null,
    Object? productTypes = null,
    Object? shortDescription = freezed,
    Object? longDescription = freezed,
    Object? category = freezed,
    Object? brand = freezed,
    Object? variantInfo = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageBundle>,
      availableStock: null == availableStock
          ? _value.availableStock
          : availableStock // ignore: cast_nullable_to_non_nullable
              as int,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      minOrderQuantity: null == minOrderQuantity
          ? _value.minOrderQuantity
          : minOrderQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      pricePerUnit: null == pricePerUnit
          ? _value.pricePerUnit
          : pricePerUnit // ignore: cast_nullable_to_non_nullable
              as double,
      slugUrl: null == slugUrl
          ? _value.slugUrl
          : slugUrl // ignore: cast_nullable_to_non_nullable
              as String,
      productTypes: null == productTypes
          ? _value.productTypes
          : productTypes // ignore: cast_nullable_to_non_nullable
              as Set<ProductType>,
      shortDescription: freezed == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      longDescription: freezed == longDescription
          ? _value.longDescription
          : longDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      variantInfo: freezed == variantInfo
          ? _value.variantInfo
          : variantInfo // ignore: cast_nullable_to_non_nullable
              as VariantInfo?,
    ) as $Val);
  }

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VariantInfoCopyWith<$Res>? get variantInfo {
    if (_value.variantInfo == null) {
      return null;
    }

    return $VariantInfoCopyWith<$Res>(_value.variantInfo!, (value) {
      return _then(_value.copyWith(variantInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String currency,
      List<ImageBundle> images,
      int availableStock,
      int stock,
      int minOrderQuantity,
      String name,
      double price,
      double pricePerUnit,
      String slugUrl,
      Set<ProductType> productTypes,
      String? shortDescription,
      String? longDescription,
      String? category,
      String? brand,
      VariantInfo? variantInfo});

  @override
  $VariantInfoCopyWith<$Res>? get variantInfo;
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? currency = null,
    Object? images = null,
    Object? availableStock = null,
    Object? stock = null,
    Object? minOrderQuantity = null,
    Object? name = null,
    Object? price = null,
    Object? pricePerUnit = null,
    Object? slugUrl = null,
    Object? productTypes = null,
    Object? shortDescription = freezed,
    Object? longDescription = freezed,
    Object? category = freezed,
    Object? brand = freezed,
    Object? variantInfo = freezed,
  }) {
    return _then(_$ProductImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageBundle>,
      availableStock: null == availableStock
          ? _value.availableStock
          : availableStock // ignore: cast_nullable_to_non_nullable
              as int,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      minOrderQuantity: null == minOrderQuantity
          ? _value.minOrderQuantity
          : minOrderQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      pricePerUnit: null == pricePerUnit
          ? _value.pricePerUnit
          : pricePerUnit // ignore: cast_nullable_to_non_nullable
              as double,
      slugUrl: null == slugUrl
          ? _value.slugUrl
          : slugUrl // ignore: cast_nullable_to_non_nullable
              as String,
      productTypes: null == productTypes
          ? _value._productTypes
          : productTypes // ignore: cast_nullable_to_non_nullable
              as Set<ProductType>,
      shortDescription: freezed == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      longDescription: freezed == longDescription
          ? _value.longDescription
          : longDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      variantInfo: freezed == variantInfo
          ? _value.variantInfo
          : variantInfo // ignore: cast_nullable_to_non_nullable
              as VariantInfo?,
    ));
  }
}

/// @nodoc

class _$ProductImpl extends _Product {
  _$ProductImpl(
      {required this.id,
      required this.currency,
      required final List<ImageBundle> images,
      required this.availableStock,
      required this.stock,
      required this.minOrderQuantity,
      required this.name,
      required this.price,
      required this.pricePerUnit,
      required this.slugUrl,
      required final Set<ProductType> productTypes,
      required this.shortDescription,
      required this.longDescription,
      required this.category,
      this.brand,
      this.variantInfo})
      : _images = images,
        _productTypes = productTypes,
        super._();

  @override
  final String id;
  @override
  final String currency;
  final List<ImageBundle> _images;
  @override
  List<ImageBundle> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final int availableStock;
  @override
  final int stock;
  @override
  final int minOrderQuantity;
  @override
  final String name;
  @override
  final double price;
  @override
  final double pricePerUnit;
  @override
  final String slugUrl;
  final Set<ProductType> _productTypes;
  @override
  Set<ProductType> get productTypes {
    if (_productTypes is EqualUnmodifiableSetView) return _productTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_productTypes);
  }

  @override
  final String? shortDescription;
  @override
  final String? longDescription;
  @override
  final String? category;
  @override
  final String? brand;
  @override
  final VariantInfo? variantInfo;

  @override
  String toString() {
    return 'Product(id: $id, currency: $currency, images: $images, availableStock: $availableStock, stock: $stock, minOrderQuantity: $minOrderQuantity, name: $name, price: $price, pricePerUnit: $pricePerUnit, slugUrl: $slugUrl, productTypes: $productTypes, shortDescription: $shortDescription, longDescription: $longDescription, category: $category, brand: $brand, variantInfo: $variantInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.availableStock, availableStock) ||
                other.availableStock == availableStock) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.minOrderQuantity, minOrderQuantity) ||
                other.minOrderQuantity == minOrderQuantity) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.pricePerUnit, pricePerUnit) ||
                other.pricePerUnit == pricePerUnit) &&
            (identical(other.slugUrl, slugUrl) || other.slugUrl == slugUrl) &&
            const DeepCollectionEquality()
                .equals(other._productTypes, _productTypes) &&
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription) &&
            (identical(other.longDescription, longDescription) ||
                other.longDescription == longDescription) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.variantInfo, variantInfo) ||
                other.variantInfo == variantInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      currency,
      const DeepCollectionEquality().hash(_images),
      availableStock,
      stock,
      minOrderQuantity,
      name,
      price,
      pricePerUnit,
      slugUrl,
      const DeepCollectionEquality().hash(_productTypes),
      shortDescription,
      longDescription,
      category,
      brand,
      variantInfo);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);
}

abstract class _Product extends Product {
  factory _Product(
      {required final String id,
      required final String currency,
      required final List<ImageBundle> images,
      required final int availableStock,
      required final int stock,
      required final int minOrderQuantity,
      required final String name,
      required final double price,
      required final double pricePerUnit,
      required final String slugUrl,
      required final Set<ProductType> productTypes,
      required final String? shortDescription,
      required final String? longDescription,
      required final String? category,
      final String? brand,
      final VariantInfo? variantInfo}) = _$ProductImpl;
  _Product._() : super._();

  @override
  String get id;
  @override
  String get currency;
  @override
  List<ImageBundle> get images;
  @override
  int get availableStock;
  @override
  int get stock;
  @override
  int get minOrderQuantity;
  @override
  String get name;
  @override
  double get price;
  @override
  double get pricePerUnit;
  @override
  String get slugUrl;
  @override
  Set<ProductType> get productTypes;
  @override
  String? get shortDescription;
  @override
  String? get longDescription;
  @override
  String? get category;
  @override
  String? get brand;
  @override
  VariantInfo? get variantInfo;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
