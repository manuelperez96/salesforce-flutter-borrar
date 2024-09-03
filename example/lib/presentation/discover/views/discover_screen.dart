import 'package:example/constants.dart';
import 'package:example/extensions/context_extensions.dart';
import 'package:example/models/category_model.dart';
import 'package:example/presentation/discover/views/components/expansion_category.dart';
import 'package:example/presentation/search/views/components/search_form.dart';
import 'package:flutter/material.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final demoCategories = getCategoriesList(context);

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(defaultPadding),
              child: SearchForm(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding,
                vertical: defaultPadding / 2,
              ),
              child: Text(
                context.localizations.categories,
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            // While loading use 👇
            // const Expanded(
            //   child: DiscoverCategoriesSkelton(),
            // ),
            Expanded(
              child: ListView.builder(
                itemCount: demoCategories.length,
                itemBuilder: (context, index) => ExpansionCategory(
                  svgSrc: demoCategories[index].svgSrc!,
                  title: demoCategories[index].title,
                  subCategory: demoCategories[index].subCategories!,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<CategoryModel> getCategoriesList(BuildContext context) {
    return [
      CategoryModel(
        title: context.localizations.onsale,
        svgSrc: 'assets/icons/Sale.svg',
        subCategories: [
          CategoryModel(title: context.localizations.category_subtitle_1),
          CategoryModel(title: context.localizations.category_subtitle_2),
          CategoryModel(title: context.localizations.category_subtitle_3),
          CategoryModel(title: context.localizations.category_subtitle_4),
          CategoryModel(title: context.localizations.category_subtitle_5),
        ],
      ),
      CategoryModel(
        title: context.localizations.man_woman,
        svgSrc: 'assets/icons/Man&Woman.svg',
        subCategories: [
          CategoryModel(title: context.localizations.category_subtitle_1),
          CategoryModel(title: context.localizations.category_subtitle_2),
          CategoryModel(title: context.localizations.category_subtitle_3),
        ],
      ),
      CategoryModel(
        title: context.localizations.kids,
        svgSrc: 'assets/icons/Child.svg',
        subCategories: [
          CategoryModel(title: context.localizations.category_subtitle_1),
          CategoryModel(title: context.localizations.category_subtitle_2),
          CategoryModel(title: context.localizations.category_subtitle_3),
        ],
      ),
      CategoryModel(
        title: context.localizations.accessories,
        svgSrc: 'assets/icons/Accessories.svg',
        subCategories: [
          CategoryModel(title: context.localizations.category_subtitle_1),
          CategoryModel(title: context.localizations.category_subtitle_2),
        ],
      ),
    ];
  }
}
