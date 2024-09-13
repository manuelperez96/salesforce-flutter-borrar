import 'package:example/constants.dart';
import 'package:example/ui/components/skleton/skelton.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CategoriesSkelton extends StatelessWidget {
  const CategoriesSkelton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          5,
          (_) => Padding(
            padding: const EdgeInsets.only(left: defaultPadding),
            child: Shimmer.fromColors(
              baseColor: Colors.grey.shade700,
              highlightColor: Colors.white,
              child: const Skeleton(
                height: 32,
                width: 96,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
