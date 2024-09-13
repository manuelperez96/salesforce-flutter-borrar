import 'package:example/constants.dart';
import 'package:example/models/category_model.dart';
import 'package:example/ui/route/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ExpansionCategory extends StatelessWidget {
  const ExpansionCategory({
    required this.title,
    required this.subCategory,
    required this.svgSrc,
    super.key,
  });

  final String title;
  final String svgSrc;
  final List<CategoryModel> subCategory;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      iconColor: Theme.of(context).textTheme.bodyLarge!.color,
      collapsedIconColor: Theme.of(context).textTheme.bodyMedium!.color,
      leading: SvgPicture.asset(
        svgSrc,
        height: 24,
        width: 24,
        colorFilter: ColorFilter.mode(
          Theme.of(context).iconTheme.color!,
          BlendMode.srcIn,
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(fontSize: 14),
      ),
      textColor: Theme.of(context).textTheme.bodyLarge!.color,
      childrenPadding: const EdgeInsets.only(left: defaultPadding * 3.5),
      children: List.generate(
        subCategory.length,
        (index) => Column(
          children: [
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, onSaleScreenRoute);
              },
              title: Text(
                subCategory[index].title,
                style: const TextStyle(fontSize: 14),
              ),
            ),
            if (index < subCategory.length - 1) const Divider(height: 1),
          ],
        ),
      ),
    );
  }
}
