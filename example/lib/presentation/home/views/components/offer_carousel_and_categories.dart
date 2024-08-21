import 'package:example/di/app_modules.dart';
import 'package:example/extensions/context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:sf_commerce_sdk/models/responses/category/category.dart';
import 'package:sf_commerce_sdk/sf_commerce_sdk.dart';

import '../../../../constants.dart';
import 'categories.dart';
import 'offers_carousel.dart';

class OffersCarouselAndCategories extends StatefulWidget {
  const OffersCarouselAndCategories({
    super.key,
  });

  @override
  State<OffersCarouselAndCategories> createState() =>
      _OffersCarouselAndCategoriesState();
}

class _OffersCarouselAndCategoriesState
    extends State<OffersCarouselAndCategories> {
  List<Category>? categoryList;

  @override
  void initState() {
    super.initState();
    Future(
      () async {
        categoryList = await inject<SFCommerceSDK>().getRootCategories();
        setState(() {});
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // While loading use 👇
        // const OffersSkelton(),
        const OffersCarousel(),
        const SizedBox(height: defaultPadding / 2),
        Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Text(
            context.localizations.categories,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        // While loading use 👇
        //const CategoriesSkelton()
        const Categories(),
      ],
    );
  }
}
