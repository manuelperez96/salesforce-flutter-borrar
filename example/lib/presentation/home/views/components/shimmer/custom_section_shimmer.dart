import 'package:example/presentation/home/views/components/shimmer/banner_shimmer.dart';
import 'package:example/presentation/home/views/components/shimmer/product_list_view_shimmer.dart';
import 'package:flutter/material.dart';

class CustomSectionShimmer extends StatelessWidget {
  const CustomSectionShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BannerShimmer(),
        SizedBox(height: 36),
        ProductListViewShimmer(),
      ],
    );
  }
}
