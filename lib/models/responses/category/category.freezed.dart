// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Category {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get onlineSubCategoriesCount => throw _privateConstructorUsedError;
  String get parentCategoryId => throw _privateConstructorUsedError;
  String get cHeaderMenuBanner => throw _privateConstructorUsedError;
  String? get pageDescription => throw _privateConstructorUsedError;
  String? get pageTitle => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res, Category>;
  @useResult
  $Res call(
      {String id,
      String name,
      int onlineSubCategoriesCount,
      String parentCategoryId,
      String cHeaderMenuBanner,
      String? pageDescription,
      String? pageTitle});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res, $Val extends Category>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? onlineSubCategoriesCount = null,
    Object? parentCategoryId = null,
    Object? cHeaderMenuBanner = null,
    Object? pageDescription = freezed,
    Object? pageTitle = freezed,
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
      onlineSubCategoriesCount: null == onlineSubCategoriesCount
          ? _value.onlineSubCategoriesCount
          : onlineSubCategoriesCount // ignore: cast_nullable_to_non_nullable
              as int,
      parentCategoryId: null == parentCategoryId
          ? _value.parentCategoryId
          : parentCategoryId // ignore: cast_nullable_to_non_nullable
              as String,
      cHeaderMenuBanner: null == cHeaderMenuBanner
          ? _value.cHeaderMenuBanner
          : cHeaderMenuBanner // ignore: cast_nullable_to_non_nullable
              as String,
      pageDescription: freezed == pageDescription
          ? _value.pageDescription
          : pageDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      pageTitle: freezed == pageTitle
          ? _value.pageTitle
          : pageTitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryImplCopyWith<$Res>
    implements $CategoryCopyWith<$Res> {
  factory _$$CategoryImplCopyWith(
          _$CategoryImpl value, $Res Function(_$CategoryImpl) then) =
      __$$CategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      int onlineSubCategoriesCount,
      String parentCategoryId,
      String cHeaderMenuBanner,
      String? pageDescription,
      String? pageTitle});
}

/// @nodoc
class __$$CategoryImplCopyWithImpl<$Res>
    extends _$CategoryCopyWithImpl<$Res, _$CategoryImpl>
    implements _$$CategoryImplCopyWith<$Res> {
  __$$CategoryImplCopyWithImpl(
      _$CategoryImpl _value, $Res Function(_$CategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? onlineSubCategoriesCount = null,
    Object? parentCategoryId = null,
    Object? cHeaderMenuBanner = null,
    Object? pageDescription = freezed,
    Object? pageTitle = freezed,
  }) {
    return _then(_$CategoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      onlineSubCategoriesCount: null == onlineSubCategoriesCount
          ? _value.onlineSubCategoriesCount
          : onlineSubCategoriesCount // ignore: cast_nullable_to_non_nullable
              as int,
      parentCategoryId: null == parentCategoryId
          ? _value.parentCategoryId
          : parentCategoryId // ignore: cast_nullable_to_non_nullable
              as String,
      cHeaderMenuBanner: null == cHeaderMenuBanner
          ? _value.cHeaderMenuBanner
          : cHeaderMenuBanner // ignore: cast_nullable_to_non_nullable
              as String,
      pageDescription: freezed == pageDescription
          ? _value.pageDescription
          : pageDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      pageTitle: freezed == pageTitle
          ? _value.pageTitle
          : pageTitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CategoryImpl implements _Category {
  _$CategoryImpl(
      {required this.id,
      required this.name,
      required this.onlineSubCategoriesCount,
      required this.parentCategoryId,
      required this.cHeaderMenuBanner,
      this.pageDescription,
      this.pageTitle});

  @override
  final String id;
  @override
  final String name;
  @override
  final int onlineSubCategoriesCount;
  @override
  final String parentCategoryId;
  @override
  final String cHeaderMenuBanner;
  @override
  final String? pageDescription;
  @override
  final String? pageTitle;

  @override
  String toString() {
    return 'Category(id: $id, name: $name, onlineSubCategoriesCount: $onlineSubCategoriesCount, parentCategoryId: $parentCategoryId, cHeaderMenuBanner: $cHeaderMenuBanner, pageDescription: $pageDescription, pageTitle: $pageTitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(
                    other.onlineSubCategoriesCount, onlineSubCategoriesCount) ||
                other.onlineSubCategoriesCount == onlineSubCategoriesCount) &&
            (identical(other.parentCategoryId, parentCategoryId) ||
                other.parentCategoryId == parentCategoryId) &&
            (identical(other.cHeaderMenuBanner, cHeaderMenuBanner) ||
                other.cHeaderMenuBanner == cHeaderMenuBanner) &&
            (identical(other.pageDescription, pageDescription) ||
                other.pageDescription == pageDescription) &&
            (identical(other.pageTitle, pageTitle) ||
                other.pageTitle == pageTitle));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      onlineSubCategoriesCount,
      parentCategoryId,
      cHeaderMenuBanner,
      pageDescription,
      pageTitle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      __$$CategoryImplCopyWithImpl<_$CategoryImpl>(this, _$identity);
}

abstract class _Category implements Category {
  factory _Category(
      {required final String id,
      required final String name,
      required final int onlineSubCategoriesCount,
      required final String parentCategoryId,
      required final String cHeaderMenuBanner,
      final String? pageDescription,
      final String? pageTitle}) = _$CategoryImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  int get onlineSubCategoriesCount;
  @override
  String get parentCategoryId;
  @override
  String get cHeaderMenuBanner;
  @override
  String? get pageDescription;
  @override
  String? get pageTitle;
  @override
  @JsonKey(ignore: true)
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
