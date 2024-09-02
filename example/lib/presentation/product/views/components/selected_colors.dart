import 'package:flutter/material.dart';
import 'package:sf_commerce_sdk/models/responses/product/product.dart';

import '../../../../constants.dart';

class SelectedColors extends StatelessWidget {
  const SelectedColors({
    super.key,
    required this.product,
    required this.press,
  });
  final ValueChanged<int> press;
  final Product product;

  @override
  Widget build(BuildContext context) {
    final colors = product.variationAttributes!
        .firstWhere((element) => element.id == "color")
        .values
        .map((color) => color)
        .toList();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Text(
            "Select Color",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              colors.length,
              (index) => Padding(
                padding: EdgeInsets.only(
                    left: index == 0 ? defaultPadding : defaultPadding / 2),
                child: TextButton(
                  onPressed: () {},
                  child: Text(colors[index].name,
                      style: TextStyle(
                          color: product.variationValues!.color ==
                                  colors[index].value
                              ? null
                              : Colors.black)),
                ),
                // TODO finish this when Saleforce responds (show Colors)

                //  ColorDot(
                //   color: colors[index],
                //   isActive: selectedColorIndex == index,
                //   press: () => press(index),
                // ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
