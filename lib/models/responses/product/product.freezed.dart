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

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  String get id => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  List<ImageGroup> get imageGroups => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get pageDescription => throw _privateConstructorUsedError;
  String get pageTitle => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  int get pricePerUnit => throw _privateConstructorUsedError;
  String get shortDescription => throw _privateConstructorUsedError;
  int? get minOrderQuantity =>
      throw _privateConstructorUsedError; // required String slugUrl,
// required int stepQuantity,
// required String unitMeasure,
// required int unitQuantity,
// required String upc,
// required List<Variant> variants,
  List<ProductVariationAttribute>? get variationAttributes =>
      throw _privateConstructorUsedError;

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

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
      List<ImageGroup> imageGroups,
      String name,
      String pageDescription,
      String pageTitle,
      double price,
      int pricePerUnit,
      String shortDescription,
      int? minOrderQuantity,
      List<ProductVariationAttribute>? variationAttributes});
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
    Object? imageGroups = null,
    Object? name = null,
    Object? pageDescription = null,
    Object? pageTitle = null,
    Object? price = null,
    Object? pricePerUnit = null,
    Object? shortDescription = null,
    Object? minOrderQuantity = freezed,
    Object? variationAttributes = freezed,
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
      imageGroups: null == imageGroups
          ? _value.imageGroups
          : imageGroups // ignore: cast_nullable_to_non_nullable
              as List<ImageGroup>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      pageDescription: null == pageDescription
          ? _value.pageDescription
          : pageDescription // ignore: cast_nullable_to_non_nullable
              as String,
      pageTitle: null == pageTitle
          ? _value.pageTitle
          : pageTitle // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      pricePerUnit: null == pricePerUnit
          ? _value.pricePerUnit
          : pricePerUnit // ignore: cast_nullable_to_non_nullable
              as int,
      shortDescription: null == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      minOrderQuantity: freezed == minOrderQuantity
          ? _value.minOrderQuantity
          : minOrderQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      variationAttributes: freezed == variationAttributes
          ? _value.variationAttributes
          : variationAttributes // ignore: cast_nullable_to_non_nullable
              as List<ProductVariationAttribute>?,
    ) as $Val);
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
      List<ImageGroup> imageGroups,
      String name,
      String pageDescription,
      String pageTitle,
      double price,
      int pricePerUnit,
      String shortDescription,
      int? minOrderQuantity,
      List<ProductVariationAttribute>? variationAttributes});
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
    Object? imageGroups = null,
    Object? name = null,
    Object? pageDescription = null,
    Object? pageTitle = null,
    Object? price = null,
    Object? pricePerUnit = null,
    Object? shortDescription = null,
    Object? minOrderQuantity = freezed,
    Object? variationAttributes = freezed,
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
      imageGroups: null == imageGroups
          ? _value._imageGroups
          : imageGroups // ignore: cast_nullable_to_non_nullable
              as List<ImageGroup>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      pageDescription: null == pageDescription
          ? _value.pageDescription
          : pageDescription // ignore: cast_nullable_to_non_nullable
              as String,
      pageTitle: null == pageTitle
          ? _value.pageTitle
          : pageTitle // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      pricePerUnit: null == pricePerUnit
          ? _value.pricePerUnit
          : pricePerUnit // ignore: cast_nullable_to_non_nullable
              as int,
      shortDescription: null == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      minOrderQuantity: freezed == minOrderQuantity
          ? _value.minOrderQuantity
          : minOrderQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      variationAttributes: freezed == variationAttributes
          ? _value._variationAttributes
          : variationAttributes // ignore: cast_nullable_to_non_nullable
              as List<ProductVariationAttribute>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl implements _Product {
  _$ProductImpl(
      {required this.id,
      required this.currency,
      required final List<ImageGroup> imageGroups,
      required this.name,
      required this.pageDescription,
      required this.pageTitle,
      required this.price,
      required this.pricePerUnit,
      required this.shortDescription,
      required this.minOrderQuantity,
      required final List<ProductVariationAttribute>? variationAttributes})
      : _imageGroups = imageGroups,
        _variationAttributes = variationAttributes;

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  final String id;
  @override
  final String currency;
  final List<ImageGroup> _imageGroups;
  @override
  List<ImageGroup> get imageGroups {
    if (_imageGroups is EqualUnmodifiableListView) return _imageGroups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageGroups);
  }

  @override
  final String name;
  @override
  final String pageDescription;
  @override
  final String pageTitle;
  @override
  final double price;
  @override
  final int pricePerUnit;
  @override
  final String shortDescription;
  @override
  final int? minOrderQuantity;
// required String slugUrl,
// required int stepQuantity,
// required String unitMeasure,
// required int unitQuantity,
// required String upc,
// required List<Variant> variants,
  final List<ProductVariationAttribute>? _variationAttributes;
// required String slugUrl,
// required int stepQuantity,
// required String unitMeasure,
// required int unitQuantity,
// required String upc,
// required List<Variant> variants,
  @override
  List<ProductVariationAttribute>? get variationAttributes {
    final value = _variationAttributes;
    if (value == null) return null;
    if (_variationAttributes is EqualUnmodifiableListView)
      return _variationAttributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Product(id: $id, currency: $currency, imageGroups: $imageGroups, name: $name, pageDescription: $pageDescription, pageTitle: $pageTitle, price: $price, pricePerUnit: $pricePerUnit, shortDescription: $shortDescription, minOrderQuantity: $minOrderQuantity, variationAttributes: $variationAttributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            const DeepCollectionEquality()
                .equals(other._imageGroups, _imageGroups) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.pageDescription, pageDescription) ||
                other.pageDescription == pageDescription) &&
            (identical(other.pageTitle, pageTitle) ||
                other.pageTitle == pageTitle) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.pricePerUnit, pricePerUnit) ||
                other.pricePerUnit == pricePerUnit) &&
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription) &&
            (identical(other.minOrderQuantity, minOrderQuantity) ||
                other.minOrderQuantity == minOrderQuantity) &&
            const DeepCollectionEquality()
                .equals(other._variationAttributes, _variationAttributes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      currency,
      const DeepCollectionEquality().hash(_imageGroups),
      name,
      pageDescription,
      pageTitle,
      price,
      pricePerUnit,
      shortDescription,
      minOrderQuantity,
      const DeepCollectionEquality().hash(_variationAttributes));

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  factory _Product(
      {required final String id,
      required final String currency,
      required final List<ImageGroup> imageGroups,
      required final String name,
      required final String pageDescription,
      required final String pageTitle,
      required final double price,
      required final int pricePerUnit,
      required final String shortDescription,
      required final int? minOrderQuantity,
      required final List<ProductVariationAttribute>?
          variationAttributes}) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  String get id;
  @override
  String get currency;
  @override
  List<ImageGroup> get imageGroups;
  @override
  String get name;
  @override
  String get pageDescription;
  @override
  String get pageTitle;
  @override
  double get price;
  @override
  int get pricePerUnit;
  @override
  String get shortDescription;
  @override
  int? get minOrderQuantity; // required String slugUrl,
// required int stepQuantity,
// required String unitMeasure,
// required int unitQuantity,
// required String upc,
// required List<Variant> variants,
  @override
  List<ProductVariationAttribute>? get variationAttributes;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageGroup _$ImageGroupFromJson(Map<String, dynamic> json) {
  return _ImageGroup.fromJson(json);
}

/// @nodoc
mixin _$ImageGroup {
  List<Image> get images => throw _privateConstructorUsedError;
  String get viewType => throw _privateConstructorUsedError;

  /// Serializes this ImageGroup to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImageGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageGroupCopyWith<ImageGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageGroupCopyWith<$Res> {
  factory $ImageGroupCopyWith(
          ImageGroup value, $Res Function(ImageGroup) then) =
      _$ImageGroupCopyWithImpl<$Res, ImageGroup>;
  @useResult
  $Res call({List<Image> images, String viewType});
}

/// @nodoc
class _$ImageGroupCopyWithImpl<$Res, $Val extends ImageGroup>
    implements $ImageGroupCopyWith<$Res> {
  _$ImageGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
    Object? viewType = null,
  }) {
    return _then(_value.copyWith(
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>,
      viewType: null == viewType
          ? _value.viewType
          : viewType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageGroupImplCopyWith<$Res>
    implements $ImageGroupCopyWith<$Res> {
  factory _$$ImageGroupImplCopyWith(
          _$ImageGroupImpl value, $Res Function(_$ImageGroupImpl) then) =
      __$$ImageGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Image> images, String viewType});
}

/// @nodoc
class __$$ImageGroupImplCopyWithImpl<$Res>
    extends _$ImageGroupCopyWithImpl<$Res, _$ImageGroupImpl>
    implements _$$ImageGroupImplCopyWith<$Res> {
  __$$ImageGroupImplCopyWithImpl(
      _$ImageGroupImpl _value, $Res Function(_$ImageGroupImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
    Object? viewType = null,
  }) {
    return _then(_$ImageGroupImpl(
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>,
      viewType: null == viewType
          ? _value.viewType
          : viewType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageGroupImpl implements _ImageGroup {
  _$ImageGroupImpl({required final List<Image> images, required this.viewType})
      : _images = images;

  factory _$ImageGroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageGroupImplFromJson(json);

  final List<Image> _images;
  @override
  List<Image> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final String viewType;

  @override
  String toString() {
    return 'ImageGroup(images: $images, viewType: $viewType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageGroupImpl &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.viewType, viewType) ||
                other.viewType == viewType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_images), viewType);

  /// Create a copy of ImageGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageGroupImplCopyWith<_$ImageGroupImpl> get copyWith =>
      __$$ImageGroupImplCopyWithImpl<_$ImageGroupImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageGroupImplToJson(
      this,
    );
  }
}

abstract class _ImageGroup implements ImageGroup {
  factory _ImageGroup(
      {required final List<Image> images,
      required final String viewType}) = _$ImageGroupImpl;

  factory _ImageGroup.fromJson(Map<String, dynamic> json) =
      _$ImageGroupImpl.fromJson;

  @override
  List<Image> get images;
  @override
  String get viewType;

  /// Create a copy of ImageGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageGroupImplCopyWith<_$ImageGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductVariationAttribute _$ProductVariationAttributeFromJson(
    Map<String, dynamic> json) {
  return _ProductVariationAttribute.fromJson(json);
}

/// @nodoc
mixin _$ProductVariationAttribute {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<ValuesVariation> get values => throw _privateConstructorUsedError;

  /// Serializes this ProductVariationAttribute to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductVariationAttribute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductVariationAttributeCopyWith<ProductVariationAttribute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductVariationAttributeCopyWith<$Res> {
  factory $ProductVariationAttributeCopyWith(ProductVariationAttribute value,
          $Res Function(ProductVariationAttribute) then) =
      _$ProductVariationAttributeCopyWithImpl<$Res, ProductVariationAttribute>;
  @useResult
  $Res call({String id, String name, List<ValuesVariation> values});
}

/// @nodoc
class _$ProductVariationAttributeCopyWithImpl<$Res,
        $Val extends ProductVariationAttribute>
    implements $ProductVariationAttributeCopyWith<$Res> {
  _$ProductVariationAttributeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductVariationAttribute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? values = null,
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
      values: null == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<ValuesVariation>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductVariationAttributeImplCopyWith<$Res>
    implements $ProductVariationAttributeCopyWith<$Res> {
  factory _$$ProductVariationAttributeImplCopyWith(
          _$ProductVariationAttributeImpl value,
          $Res Function(_$ProductVariationAttributeImpl) then) =
      __$$ProductVariationAttributeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, List<ValuesVariation> values});
}

/// @nodoc
class __$$ProductVariationAttributeImplCopyWithImpl<$Res>
    extends _$ProductVariationAttributeCopyWithImpl<$Res,
        _$ProductVariationAttributeImpl>
    implements _$$ProductVariationAttributeImplCopyWith<$Res> {
  __$$ProductVariationAttributeImplCopyWithImpl(
      _$ProductVariationAttributeImpl _value,
      $Res Function(_$ProductVariationAttributeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductVariationAttribute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? values = null,
  }) {
    return _then(_$ProductVariationAttributeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      values: null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<ValuesVariation>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductVariationAttributeImpl implements _ProductVariationAttribute {
  _$ProductVariationAttributeImpl(
      {required this.id,
      required this.name,
      required final List<ValuesVariation> values})
      : _values = values;

  factory _$ProductVariationAttributeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductVariationAttributeImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final List<ValuesVariation> _values;
  @override
  List<ValuesVariation> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  @override
  String toString() {
    return 'ProductVariationAttribute(id: $id, name: $name, values: $values)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductVariationAttributeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_values));

  /// Create a copy of ProductVariationAttribute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductVariationAttributeImplCopyWith<_$ProductVariationAttributeImpl>
      get copyWith => __$$ProductVariationAttributeImplCopyWithImpl<
          _$ProductVariationAttributeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductVariationAttributeImplToJson(
      this,
    );
  }
}

abstract class _ProductVariationAttribute implements ProductVariationAttribute {
  factory _ProductVariationAttribute(
          {required final String id,
          required final String name,
          required final List<ValuesVariation> values}) =
      _$ProductVariationAttributeImpl;

  factory _ProductVariationAttribute.fromJson(Map<String, dynamic> json) =
      _$ProductVariationAttributeImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  List<ValuesVariation> get values;

  /// Create a copy of ProductVariationAttribute
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductVariationAttributeImplCopyWith<_$ProductVariationAttributeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ValuesVariation _$ValuesVariationFromJson(Map<String, dynamic> json) {
  return _ValuesVariation.fromJson(json);
}

/// @nodoc
mixin _$ValuesVariation {
  String get name => throw _privateConstructorUsedError;
  bool get orderable => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  /// Serializes this ValuesVariation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ValuesVariation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ValuesVariationCopyWith<ValuesVariation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValuesVariationCopyWith<$Res> {
  factory $ValuesVariationCopyWith(
          ValuesVariation value, $Res Function(ValuesVariation) then) =
      _$ValuesVariationCopyWithImpl<$Res, ValuesVariation>;
  @useResult
  $Res call({String name, bool orderable, String value});
}

/// @nodoc
class _$ValuesVariationCopyWithImpl<$Res, $Val extends ValuesVariation>
    implements $ValuesVariationCopyWith<$Res> {
  _$ValuesVariationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ValuesVariation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? orderable = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      orderable: null == orderable
          ? _value.orderable
          : orderable // ignore: cast_nullable_to_non_nullable
              as bool,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ValuesVariationImplCopyWith<$Res>
    implements $ValuesVariationCopyWith<$Res> {
  factory _$$ValuesVariationImplCopyWith(_$ValuesVariationImpl value,
          $Res Function(_$ValuesVariationImpl) then) =
      __$$ValuesVariationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, bool orderable, String value});
}

/// @nodoc
class __$$ValuesVariationImplCopyWithImpl<$Res>
    extends _$ValuesVariationCopyWithImpl<$Res, _$ValuesVariationImpl>
    implements _$$ValuesVariationImplCopyWith<$Res> {
  __$$ValuesVariationImplCopyWithImpl(
      _$ValuesVariationImpl _value, $Res Function(_$ValuesVariationImpl) _then)
      : super(_value, _then);

  /// Create a copy of ValuesVariation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? orderable = null,
    Object? value = null,
  }) {
    return _then(_$ValuesVariationImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      orderable: null == orderable
          ? _value.orderable
          : orderable // ignore: cast_nullable_to_non_nullable
              as bool,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValuesVariationImpl implements _ValuesVariation {
  _$ValuesVariationImpl(
      {required this.name, required this.orderable, required this.value});

  factory _$ValuesVariationImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValuesVariationImplFromJson(json);

  @override
  final String name;
  @override
  final bool orderable;
  @override
  final String value;

  @override
  String toString() {
    return 'ValuesVariation(name: $name, orderable: $orderable, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValuesVariationImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.orderable, orderable) ||
                other.orderable == orderable) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, orderable, value);

  /// Create a copy of ValuesVariation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValuesVariationImplCopyWith<_$ValuesVariationImpl> get copyWith =>
      __$$ValuesVariationImplCopyWithImpl<_$ValuesVariationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ValuesVariationImplToJson(
      this,
    );
  }
}

abstract class _ValuesVariation implements ValuesVariation {
  factory _ValuesVariation(
      {required final String name,
      required final bool orderable,
      required final String value}) = _$ValuesVariationImpl;

  factory _ValuesVariation.fromJson(Map<String, dynamic> json) =
      _$ValuesVariationImpl.fromJson;

  @override
  String get name;
  @override
  bool get orderable;
  @override
  String get value;

  /// Create a copy of ValuesVariation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValuesVariationImplCopyWith<_$ValuesVariationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
