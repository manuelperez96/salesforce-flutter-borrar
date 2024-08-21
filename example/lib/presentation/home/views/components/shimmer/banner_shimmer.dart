import 'package:flutter/material.dart';

class BannerShimmer extends StatelessWidget {
  const BannerShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.87,
      child: Container(
        color: Colors.grey.shade200,
      ),
    );
  }
}
