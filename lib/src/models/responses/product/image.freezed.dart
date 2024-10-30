// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ImageBundle {
  List<Image> get images => throw _privateConstructorUsedError;
  String get viewType => throw _privateConstructorUsedError;
  List<VariationAttribute> get variationAttributes =>
      throw _privateConstructorUsedError;

  /// Create a copy of ImageBundle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageBundleCopyWith<ImageBundle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageBundleCopyWith<$Res> {
  factory $ImageBundleCopyWith(
          ImageBundle value, $Res Function(ImageBundle) then) =
      _$ImageBundleCopyWithImpl<$Res, ImageBundle>;
  @useResult
  $Res call(
      {List<Image> images,
      String viewType,
      List<VariationAttribute> variationAttributes});
}

/// @nodoc
class _$ImageBundleCopyWithImpl<$Res, $Val extends ImageBundle>
    implements $ImageBundleCopyWith<$Res> {
  _$ImageBundleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageBundle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
    Object? viewType = null,
    Object? variationAttributes = null,
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
      variationAttributes: null == variationAttributes
          ? _value.variationAttributes
          : variationAttributes // ignore: cast_nullable_to_non_nullable
              as List<VariationAttribute>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageBundleImplCopyWith<$Res>
    implements $ImageBundleCopyWith<$Res> {
  factory _$$ImageBundleImplCopyWith(
          _$ImageBundleImpl value, $Res Function(_$ImageBundleImpl) then) =
      __$$ImageBundleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Image> images,
      String viewType,
      List<VariationAttribute> variationAttributes});
}

/// @nodoc
class __$$ImageBundleImplCopyWithImpl<$Res>
    extends _$ImageBundleCopyWithImpl<$Res, _$ImageBundleImpl>
    implements _$$ImageBundleImplCopyWith<$Res> {
  __$$ImageBundleImplCopyWithImpl(
      _$ImageBundleImpl _value, $Res Function(_$ImageBundleImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageBundle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
    Object? viewType = null,
    Object? variationAttributes = null,
  }) {
    return _then(_$ImageBundleImpl(
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>,
      viewType: null == viewType
          ? _value.viewType
          : viewType // ignore: cast_nullable_to_non_nullable
              as String,
      variationAttributes: null == variationAttributes
          ? _value._variationAttributes
          : variationAttributes // ignore: cast_nullable_to_non_nullable
              as List<VariationAttribute>,
    ));
  }
}

/// @nodoc

class _$ImageBundleImpl extends _ImageBundle {
  _$ImageBundleImpl(
      {required final List<Image> images,
      required this.viewType,
      final List<VariationAttribute> variationAttributes = const []})
      : _images = images,
        _variationAttributes = variationAttributes,
        super._();

  final List<Image> _images;
  @override
  List<Image> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final String viewType;
  final List<VariationAttribute> _variationAttributes;
  @override
  @JsonKey()
  List<VariationAttribute> get variationAttributes {
    if (_variationAttributes is EqualUnmodifiableListView)
      return _variationAttributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_variationAttributes);
  }

  @override
  String toString() {
    return 'ImageBundle(images: $images, viewType: $viewType, variationAttributes: $variationAttributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageBundleImpl &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.viewType, viewType) ||
                other.viewType == viewType) &&
            const DeepCollectionEquality()
                .equals(other._variationAttributes, _variationAttributes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_images),
      viewType,
      const DeepCollectionEquality().hash(_variationAttributes));

  /// Create a copy of ImageBundle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageBundleImplCopyWith<_$ImageBundleImpl> get copyWith =>
      __$$ImageBundleImplCopyWithImpl<_$ImageBundleImpl>(this, _$identity);
}

abstract class _ImageBundle extends ImageBundle {
  factory _ImageBundle(
      {required final List<Image> images,
      required final String viewType,
      final List<VariationAttribute> variationAttributes}) = _$ImageBundleImpl;
  _ImageBundle._() : super._();

  @override
  List<Image> get images;
  @override
  String get viewType;
  @override
  List<VariationAttribute> get variationAttributes;

  /// Create a copy of ImageBundle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageBundleImplCopyWith<_$ImageBundleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Image _$ImageFromJson(Map<String, dynamic> json) {
  return _Image.fromJson(json);
}

/// @nodoc
mixin _$Image {
  @JsonKey(name: 'alt')
  String get alternativeText => throw _privateConstructorUsedError;
  String get disBaseLink => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  /// Serializes this Image to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Image
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageCopyWith<Image> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageCopyWith<$Res> {
  factory $ImageCopyWith(Image value, $Res Function(Image) then) =
      _$ImageCopyWithImpl<$Res, Image>;
  @useResult
  $Res call(
      {@JsonKey(name: 'alt') String alternativeText,
      String disBaseLink,
      String link,
      String title});
}

/// @nodoc
class _$ImageCopyWithImpl<$Res, $Val extends Image>
    implements $ImageCopyWith<$Res> {
  _$ImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Image
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alternativeText = null,
    Object? disBaseLink = null,
    Object? link = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      alternativeText: null == alternativeText
          ? _value.alternativeText
          : alternativeText // ignore: cast_nullable_to_non_nullable
              as String,
      disBaseLink: null == disBaseLink
          ? _value.disBaseLink
          : disBaseLink // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageImplCopyWith<$Res> implements $ImageCopyWith<$Res> {
  factory _$$ImageImplCopyWith(
          _$ImageImpl value, $Res Function(_$ImageImpl) then) =
      __$$ImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'alt') String alternativeText,
      String disBaseLink,
      String link,
      String title});
}

/// @nodoc
class __$$ImageImplCopyWithImpl<$Res>
    extends _$ImageCopyWithImpl<$Res, _$ImageImpl>
    implements _$$ImageImplCopyWith<$Res> {
  __$$ImageImplCopyWithImpl(
      _$ImageImpl _value, $Res Function(_$ImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of Image
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alternativeText = null,
    Object? disBaseLink = null,
    Object? link = null,
    Object? title = null,
  }) {
    return _then(_$ImageImpl(
      alternativeText: null == alternativeText
          ? _value.alternativeText
          : alternativeText // ignore: cast_nullable_to_non_nullable
              as String,
      disBaseLink: null == disBaseLink
          ? _value.disBaseLink
          : disBaseLink // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageImpl implements _Image {
  _$ImageImpl(
      {@JsonKey(name: 'alt') required this.alternativeText,
      required this.disBaseLink,
      required this.link,
      required this.title});

  factory _$ImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageImplFromJson(json);

  @override
  @JsonKey(name: 'alt')
  final String alternativeText;
  @override
  final String disBaseLink;
  @override
  final String link;
  @override
  final String title;

  @override
  String toString() {
    return 'Image(alternativeText: $alternativeText, disBaseLink: $disBaseLink, link: $link, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageImpl &&
            (identical(other.alternativeText, alternativeText) ||
                other.alternativeText == alternativeText) &&
            (identical(other.disBaseLink, disBaseLink) ||
                other.disBaseLink == disBaseLink) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, alternativeText, disBaseLink, link, title);

  /// Create a copy of Image
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
      __$$ImageImplCopyWithImpl<_$ImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageImplToJson(
      this,
    );
  }
}

abstract class _Image implements Image {
  factory _Image(
      {@JsonKey(name: 'alt') required final String alternativeText,
      required final String disBaseLink,
      required final String link,
      required final String title}) = _$ImageImpl;

  factory _Image.fromJson(Map<String, dynamic> json) = _$ImageImpl.fromJson;

  @override
  @JsonKey(name: 'alt')
  String get alternativeText;
  @override
  String get disBaseLink;
  @override
  String get link;
  @override
  String get title;

  /// Create a copy of Image
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VariationAttribute {
  String get id => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  /// Create a copy of VariationAttribute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VariationAttributeCopyWith<VariationAttribute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariationAttributeCopyWith<$Res> {
  factory $VariationAttributeCopyWith(
          VariationAttribute value, $Res Function(VariationAttribute) then) =
      _$VariationAttributeCopyWithImpl<$Res, VariationAttribute>;
  @useResult
  $Res call({String id, String value});
}

/// @nodoc
class _$VariationAttributeCopyWithImpl<$Res, $Val extends VariationAttribute>
    implements $VariationAttributeCopyWith<$Res> {
  _$VariationAttributeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VariationAttribute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VariationAttributeImplCopyWith<$Res>
    implements $VariationAttributeCopyWith<$Res> {
  factory _$$VariationAttributeImplCopyWith(_$VariationAttributeImpl value,
          $Res Function(_$VariationAttributeImpl) then) =
      __$$VariationAttributeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String value});
}

/// @nodoc
class __$$VariationAttributeImplCopyWithImpl<$Res>
    extends _$VariationAttributeCopyWithImpl<$Res, _$VariationAttributeImpl>
    implements _$$VariationAttributeImplCopyWith<$Res> {
  __$$VariationAttributeImplCopyWithImpl(_$VariationAttributeImpl _value,
      $Res Function(_$VariationAttributeImpl) _then)
      : super(_value, _then);

  /// Create a copy of VariationAttribute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
  }) {
    return _then(_$VariationAttributeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VariationAttributeImpl implements _VariationAttribute {
  _$VariationAttributeImpl({required this.id, required this.value});

  @override
  final String id;
  @override
  final String value;

  @override
  String toString() {
    return 'VariationAttribute(id: $id, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VariationAttributeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, value);

  /// Create a copy of VariationAttribute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VariationAttributeImplCopyWith<_$VariationAttributeImpl> get copyWith =>
      __$$VariationAttributeImplCopyWithImpl<_$VariationAttributeImpl>(
          this, _$identity);
}

abstract class _VariationAttribute implements VariationAttribute {
  factory _VariationAttribute(
      {required final String id,
      required final String value}) = _$VariationAttributeImpl;

  @override
  String get id;
  @override
  String get value;

  /// Create a copy of VariationAttribute
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VariationAttributeImplCopyWith<_$VariationAttributeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
