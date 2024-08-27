class Category {
  const Category({
    required this.id,
    required this.name,
    required this.onlineSubCategoriesCount,
    required this.parentCategoryId,
    required this.cHeaderMenuBanner,
    this.pageDescription,
    this.pageTitle,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json['id'] as String,
        name: json['name'] as String,
        onlineSubCategoriesCount: json['onlineSubCategoriesCount'] as int,
        pageDescription: json['pageDescription'] as String,
        pageTitle: json['pageTitle'] as String,
        parentCategoryId: json['parentCategoryId'] as String,
        cHeaderMenuBanner: json['c_headerMenuBanner'] != null
            ? parseBannerImage(json['c_headerMenuBanner'] as String)
            : '',
      );

  final String id;
  final String name;
  final int onlineSubCategoriesCount;
  final String? pageDescription;
  final String? pageTitle;
  final String parentCategoryId;
  final String cHeaderMenuBanner;

  static String parseBannerImage(String original) {
    var imageUrl = original.substring(original.indexOf('src'));
    imageUrl = imageUrl.substring(imageUrl.indexOf('"') + 1);
    imageUrl = imageUrl.substring(0, imageUrl.indexOf('"'));
    return imageUrl;
  }
}
