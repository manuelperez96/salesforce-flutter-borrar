import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';

@freezed
class Category with _$Category {
  factory Category({
    required String id,
    required String name,
    required int onlineSubCategoriesCount,
    required String parentCategoryId,
    required String cHeaderMenuBanner,
    String? pageDescription,
    String? pageTitle,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json['id'] as String,
        name: json['name'] as String,
        onlineSubCategoriesCount: json['onlineSubCategoriesCount'] as int,
        pageDescription: (json['pageDescription'] ?? '') as String,
        pageTitle: (json['pageTitle'] ?? '') as String,
        parentCategoryId: (json['parentCategoryId'] ?? '') as String,
        cHeaderMenuBanner: json['c_headerMenuBanner'] != null
            ? parseBannerImage(json['c_headerMenuBanner'] as String)
            : '',
      );

  static String parseBannerImage(String original) {
    var imageUrl = original.substring(original.indexOf('src'));
    imageUrl = imageUrl.substring(imageUrl.indexOf('"') + 1);
    imageUrl = imageUrl.substring(0, imageUrl.indexOf('"'));
    return imageUrl;
  }
}
