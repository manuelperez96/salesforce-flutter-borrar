import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';

enum ImageOrientation {
  vertical,
  landscape;

  static ImageOrientation fromValue(String? value) {
    return switch (value?.toLowerCase()) {
      'vertical' => ImageOrientation.vertical,
      'horizontal' => ImageOrientation.landscape,
      // Used as default value when incorrect API implementation
      _ => ImageOrientation.landscape,
    };
  }
}

@freezed
class Category with _$Category {
  factory Category({
    required String id,
    required String parentCategoryId,
    required String name,
    required int subcategoryCount,
    required bool enableCompare,
    required bool showInMenu,
    List<String>? pageKeywords,
    String? menuBannerImage,
    ImageOrientation? menuBannerOrientation,
    String? slotBannerImage,
    String? pageDescription,
    String? pageTitle,
  }) = _Category;

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
      menuBannerOrientation: ImageOrientation.fromValue(
        json['c_headerMenuOrientation'] as String?,
      ),
      pageKeywords: _parseKeyword(json['pageKeywords'] as String?),
    );
  }

  static final _imageRegex = RegExp(
    r'src="(https?://[^"]+\.(jpg|jpeg|png|gif|webp|svg))"',
    caseSensitive: false,
  );

  static String? _parseBannerImage(String? value) {
    if (value == null) return null;
    return _imageRegex.firstMatch(value)?.group(1);
  }
  
  static List<String>? _parseKeyword(String? value) {
    if (value == null) return null;
    return value.split(', ');
  }
}
