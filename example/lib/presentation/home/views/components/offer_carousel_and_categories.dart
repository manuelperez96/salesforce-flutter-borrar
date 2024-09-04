import 'package:example/constants.dart';
import 'package:example/extensions/context_extensions.dart';
import 'package:example/presentation/home/views/components/categories.dart';
import 'package:example/presentation/home/views/components/offers_carousel.dart';
import 'package:flutter/material.dart';

class OffersCarouselAndCategories extends StatelessWidget {
  const OffersCarouselAndCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const OffersCarousel(),
        const SizedBox(height: defaultPadding / 2),
        Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Text(
            context.localizations.categories,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        const Categories(),
      ],
    );
  }
}
