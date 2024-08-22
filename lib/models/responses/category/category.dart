class Category {
  String id;
  String name;
  int onlineSubCategoriesCount;
  String? pageDescription;
  String? pageTitle;
  String parentCategoryId;
  String cHeaderMenuBanner;

  Category({
    required this.id,
    required this.name,
    required this.onlineSubCategoriesCount,
    this.pageDescription,
    this.pageTitle,
    required this.parentCategoryId,
    required this.cHeaderMenuBanner,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json['id'],
        name: json['name'],
        onlineSubCategoriesCount: json['onlineSubCategoriesCount'],
        pageDescription: json['pageDescription'],
        pageTitle: json['pageTitle'],
        parentCategoryId: json['parentCategoryId'],
        cHeaderMenuBanner: json['c_headerMenuBanner'] != null
            ? parseBannerImage(json['c_headerMenuBanner'])
            : '',
      );

  static String parseBannerImage(String original) {
    String imageUrl = original.substring(original.indexOf('src'));
    imageUrl = imageUrl.substring(imageUrl.indexOf('"') + 1);
    imageUrl = imageUrl.substring(0, imageUrl.indexOf('"'));
    return imageUrl;
  }
}
