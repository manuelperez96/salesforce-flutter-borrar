import 'package:example/presentation/home/views/components/shimmer/custom_section_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class HomeShimmer extends StatelessWidget {
  const HomeShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade200,
      highlightColor: Colors.grey.shade300,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.paddingOf(context).top,
            ),
            const CustomSectionShimmer(),
            const SizedBox(height: 24),
            const CustomSectionShimmer(),
            const SizedBox(height: 24),
            const CustomSectionShimmer(),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
