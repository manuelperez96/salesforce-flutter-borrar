import 'package:example/constants.dart';
import 'package:example/ui/components/skleton/product/secondary_product_skelton.dart';
import 'package:flutter/material.dart';

class SeconderyProductsSkelton extends StatelessWidget {
  const SeconderyProductsSkelton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 114,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.only(
            left: defaultPadding,
            right: index == 3 ? defaultPadding : 0,
          ),
          child: const SeconderyProductSkelton(),
        ),
      ),
    );
  }
}
