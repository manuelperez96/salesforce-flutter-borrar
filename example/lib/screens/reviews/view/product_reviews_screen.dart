import 'package:example/components/unbuy_full_ui_kit.dart';
import 'package:flutter/material.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const UnBuyFullKit(images: [
      "assets/screens/reviews.png",
      "assets/screens/Add review rate.png"
    ]);
  }
}
