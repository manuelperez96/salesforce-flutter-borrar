import 'package:example/constants.dart';
import 'package:example/l10n/l10n.dart';
import 'package:example/domain/model/category_model.dart';
import 'package:example/ui/screen/discover/views/components/expansion_category.dart';
import 'package:example/ui/screen/search/views/components/search_form.dart';
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
                context.l10n.categories,
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
        title: context.l10n.onSale,
        svgSrc: 'assets/icons/Sale.svg',
        subCategories: [
          CategoryModel(title: 'Pantalones'),
          CategoryModel(title: 'Consolas'),
          CategoryModel(title: 'Video juegos'),
        ],
      ),
    ];
  }
}
