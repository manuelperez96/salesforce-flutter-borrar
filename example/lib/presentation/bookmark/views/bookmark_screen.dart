import 'package:example/components/product/product_card.dart';
import 'package:example/models/product_model.dart';
import 'package:example/route/route_constants.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // While loading use 👇
          //  BookMarksSlelton(),
          SliverPadding(
            padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding, vertical: defaultPadding),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.0,
                mainAxisSpacing: defaultPadding,
                crossAxisSpacing: defaultPadding,
                childAspectRatio: 0.66,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return ProductCard(
                    product: demoPopularProducts[index],
                    press: () {
                      Navigator.pushNamed(context, productDetailsScreenRoute);
                    },
                  );
                },
                childCount: demoPopularProducts.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
