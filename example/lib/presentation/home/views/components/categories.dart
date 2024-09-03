import 'package:example/constants.dart';
import 'package:example/route/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// For preview
class CategoryModel {
  CategoryModel({
    required this.name,
    this.svgSrc,
    this.route,
  });
  final String name;
  final String? svgSrc;
  final String? route;
}

List<CategoryModel> demoCategories = [
  CategoryModel(name: 'All Categories'),
  CategoryModel(
    name: 'On Sale',
    svgSrc: 'assets/icons/Sale.svg',
    route: onSaleScreenRoute,
  ),
  CategoryModel(name: "Man's", svgSrc: 'assets/icons/Man.svg'),
  CategoryModel(name: 'Woman’s', svgSrc: 'assets/icons/Woman.svg'),
  CategoryModel(
    name: 'Kids',
    svgSrc: 'assets/icons/Child.svg',
    route: kidsScreenRoute,
  ),
];
// End For Preview

class Categories extends StatelessWidget {
  const Categories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    demoCategories = [
      CategoryModel(name: 'context.localizations.all_categories'),
      CategoryModel(
        name: 'context.localizations.onsale',
        svgSrc: 'assets/icons/Sale.svg',
        route: onSaleScreenRoute,
      ),
      CategoryModel(
        name: 'context.localizations.mans',
        svgSrc: 'assets/icons/Man.svg',
      ),
      CategoryModel(
        name: 'context.localizations.womans',
        svgSrc: 'assets/icons/Woman.svg',
      ),
      CategoryModel(
        name: 'context.localizations.kids',
        svgSrc: 'assets/icons/Child.svg',
        route: kidsScreenRoute,
      ),
    ];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
            demoCategories.length,
            (index) => Padding(
              padding: EdgeInsets.only(
                left: index == 0 ? defaultPadding : defaultPadding / 2,
                right: index == demoCategories.length - 1 ? defaultPadding : 0,
              ),
              child: CategoryBtn(
                category: demoCategories[index].name,
                svgSrc: demoCategories[index].svgSrc,
                isActive: index == 0,
                press: () {
                  if (demoCategories[index].route != null) {
                    Navigator.pushNamed(context, demoCategories[index].route!);
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryBtn extends StatelessWidget {
  const CategoryBtn({
    required this.category,
    required this.isActive,
    required this.press,
    super.key,
    this.svgSrc,
  });

  final String category;
  final String? svgSrc;
  final bool isActive;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: const BorderRadius.all(Radius.circular(30)),
      child: Container(
        height: 36,
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        decoration: BoxDecoration(
          color: isActive ? primaryColor : Colors.transparent,
          border: Border.all(
            color:
                isActive ? Colors.transparent : Theme.of(context).dividerColor,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(30)),
        ),
        child: Row(
          children: [
            if (svgSrc != null)
              SvgPicture.asset(
                svgSrc!,
                height: 20,
                colorFilter: ColorFilter.mode(
                  isActive ? Colors.white : Theme.of(context).iconTheme.color!,
                  BlendMode.srcIn,
                ),
              ),
            if (svgSrc != null) const SizedBox(width: defaultPadding / 2),
            Text(
              category,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: isActive
                    ? Colors.white
                    : Theme.of(context).textTheme.bodyLarge!.color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
