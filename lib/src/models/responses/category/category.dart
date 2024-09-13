import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';

/// Represents the orientation of an image.
enum ImageOrientation {
  /// Vertical orientation.
  vertical,

  /// Landscape orientation.
  landscape;
}

/// Parses a string value to an [ImageOrientation].
///
/// - `value`: The string value to parse.
/// 
/// Returns the corresponding [ImageOrientation] or `null` if the 
/// value does not match.
ImageOrientation? _parseImageOrientation(String? value) {
  switch (value) {
    case 'vertical':
      return ImageOrientation.vertical;
    case 'landscape':
      return ImageOrientation.landscape;
    default:
      return null;
  }
}

@freezed
/// {@template category}
/// Represents a category in the product catalog.
/// 
/// This class includes various fields that describe the category, 
/// including its ID,
/// parent category ID, name, subcategory count, and other attributes.
/// 
/// - `id`: The unique identifier of the category.
/// - `parentCategoryId`: The ID of the parent category.
/// - `name`: The name of the category.
/// - `subcategoryCount`: The number of subcategories.
/// - `enableCompare`: Indicates if the category supports product comparison.
/// - `showInMenu`: Indicates if the category should be shown in the menu.
/// - `pageKeywords`: A list of keywords associated with the category.
/// - `subcategories`: A list of subcategories.
/// - `menuBannerImage`: The URL of the menu banner image.
/// - `menuBannerOrientation`: The orientation of the menu banner image.
/// - `slotBannerImage`: The URL of the slot banner image.
/// - `pageDescription`: The description of the category page.
/// - `pageTitle`: The title of the category page.
/// {@endtemplate}
class Category with _$Category {
  /// {@macro category}
  factory Category({
    required String id,
    required String parentCategoryId,
    required String name,
    required int subcategoryCount,
    required bool enableCompare,
    required bool showInMenu,
    List<String>? pageKeywords,
    List<Category>? subcategories,
    String? menuBannerImage,
    ImageOrientation? menuBannerOrientation,
    String? slotBannerImage,
    String? pageDescription,
    String? pageTitle,
  }) = _Category;

  /// Creates an instance of [Category] from a JSON object.
  factory Category.fromJson({required Map<String, dynamic> json}) {
    return Category(
      id: json['id'] as String,
      name: json['name'] as String,
      parentCategoryId: (json['parentCategoryId'] ?? '') as String,
      subcategoryCount: (json['onlineSubCategoriesCount'] as num) as int,
      pageDescription: json['pageDescription'] as String?,
      pageTitle: json['pageTitle'] as String?,
      enableCompare: json['c_enableCompare'] as bool,
      showInMenu: json['c_showInMenu'] as bool,
      menuBannerImage: _parseBannerImage(json['c_headerMenuBanner'] as String?),
      menuBannerOrientation: _parseImageOrientation(
        json['c_headerMenuOrientation'] as String?,
      ),
      pageKeywords: _parseKeyword(json['pageKeywords'] as String?),
      slotBannerImage: json['c_slotBannerImage'] as String?,
      subcategories: _parseSubCategories(
        json['categories'] as List<dynamic>?,
      ),
    );
  }

  /// Regular expression for extracting image URLs from HTML.
  static final _imageRegex = RegExp(
    r'src="(https?://[^"]+\.(jpg|jpeg|png|gif|webp|svg))"',
    caseSensitive: false,
  );

  /// Parses a banner image URL from a string value.
  ///
  /// - `value`: The string value to parse.
  ///
  /// Returns the extracted image URL or `null` if no match is found.
  static String? _parseBannerImage(String? value) {
    if (value == null) return null;
    return _imageRegex.firstMatch(value)?.group(1);
  }

  /// Parses a list of keywords from a string value.
  ///
  /// - `value`: The string value to parse.
  ///
  /// Returns a list of keywords or `null` if the value is `null`.
  static List<String>? _parseKeyword(String? value) {
    if (value == null) return null;
    return value.split(', ');
  }

  /// Parses a list of subcategories from a JSON list.
  ///
  /// - `json`: The JSON list to parse.
  ///
  /// Returns a list of [Category] objects or `null` if the JSON list is `null`.
  static List<Category>? _parseSubCategories(List<dynamic>? json) {
    if (json == null) return null;
    return json
        .cast<Map<String, dynamic>>()
        .map((e) => Category.fromJson(json: e))
        .toList();
  }
}
