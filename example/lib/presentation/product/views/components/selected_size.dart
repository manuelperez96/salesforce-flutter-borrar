import 'package:flutter/material.dart';
import 'package:sf_commerce_sdk/models/responses/product/product.dart';

import '../../../../constants.dart';

class SelectedSize extends StatelessWidget {
  const SelectedSize({
    super.key,
    required this.product,
    required this.press,
  });

  final ValueChanged<int> press;
  final Product product;

  @override
  Widget build(BuildContext context) {
    final List<ValuesVariation> sizes = product.variationAttributes!
        .firstWhere((element) => element.id == "size")
        .values
        .map((size) => size)
        .toList();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: defaultPadding),
        Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Text(
            "Select Size",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        Row(
          children: List.generate(
            sizes.length,
            (index) => Padding(
              padding: EdgeInsets.only(
                  left: index == 0 ? defaultPadding : defaultPadding / 2),
              child: SizeButton(
                text: sizes[index].name,
                isActive: product.variationValues!.size == sizes[index].value,
                press: () => press(index),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class SizeButton extends StatelessWidget {
  const SizeButton({
    super.key,
    required this.text,
    required this.isActive,
    required this.press,
  });

  final String text;
  final bool isActive;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 40,
      child: OutlinedButton(
        onPressed: press,
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: const CircleBorder(),
          side: isActive ? const BorderSide(color: primaryColor) : null,
        ),
        child: Text(
          text.toUpperCase(),
          style: TextStyle(
              color: isActive
                  ? primaryColor
                  : Theme.of(context).textTheme.bodyLarge!.color),
        ),
      ),
    );
  }
}
