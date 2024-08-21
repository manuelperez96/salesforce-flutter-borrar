import 'package:example/constants.dart';
import 'package:example/presentation/home/views/components/shimmer/product_card_shimmer.dart';
import 'package:flutter/material.dart';

class ProductListViewShimmer extends StatelessWidget {
  const ProductListViewShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: defaultPadding),
          width: 100,
          height: 30,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            color: Colors.grey.shade200,
          ),
        ),
        const SizedBox(height: 18),
        SizedBox(
          height: 220,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(
                left: defaultPadding,
                right: index == 4 ? defaultPadding : 0,
              ),
              child: const ProductCardShimmer(),
            ),
          ),
        ),
      ],
    );
  }
}
