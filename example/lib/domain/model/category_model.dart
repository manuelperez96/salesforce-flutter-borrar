// TODO(TEAM): delete
class CategoryModel {
  CategoryModel({
    required this.title,
    this.image,
    this.svgSrc,
    this.subCategories,
  });
  final String title;
  final String? image;
  final String? svgSrc;
  final List<CategoryModel>? subCategories;
}

final List<CategoryModel> demoCategoriesWithImage = [
  CategoryModel(title: 'Woman’s', image: 'https://i.imgur.com/5M89G2P.png'),
  CategoryModel(title: 'Man’s', image: 'https://i.imgur.com/UM3GdWg.png'),
  CategoryModel(title: 'Kid’s', image: 'https://i.imgur.com/Lp0D6k5.png'),
  CategoryModel(title: 'Accessories', image: 'https://i.imgur.com/3mSE5sN.png'),
];

final List<CategoryModel> demoCategories = [
  CategoryModel(
    title: 'On sale',
    svgSrc: 'assets/icons/Sale.svg',
    subCategories: [
      CategoryModel(title: 'All Clothing'),
      CategoryModel(title: 'New In'),
      CategoryModel(title: 'Coats & Jackets'),
      CategoryModel(title: 'Dresses'),
      CategoryModel(title: 'Jeans'),
    ],
  ),
  CategoryModel(
    title: 'Man’s & Woman’s',
    svgSrc: 'assets/icons/Man&Woman.svg',
    subCategories: [
      CategoryModel(title: 'All Clothing'),
      CategoryModel(title: 'New In'),
      CategoryModel(title: 'Coats & Jackets'),
    ],
  ),
  CategoryModel(
    title: 'Kids',
    svgSrc: 'assets/icons/Child.svg',
    subCategories: [
      CategoryModel(title: 'All Clothing'),
      CategoryModel(title: 'New In'),
      CategoryModel(title: 'Coats & Jackets'),
    ],
  ),
  CategoryModel(
    title: 'Accessories',
    svgSrc: 'assets/icons/Accessories.svg',
    subCategories: [
      CategoryModel(title: 'All Clothing'),
      CategoryModel(title: 'New In'),
    ],
  ),
];
