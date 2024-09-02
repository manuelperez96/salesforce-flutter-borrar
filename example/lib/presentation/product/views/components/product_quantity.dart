import 'package:example/components/app_icon_button.dart';
import 'package:flutter/material.dart';

class ProductQuantity extends StatelessWidget {
  const ProductQuantity({
    super.key,
    required this.numOfItem,
    required this.onIncrement,
    required this.onDecrement,
  });

  final int numOfItem;
  final VoidCallback onIncrement, onDecrement;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppIconButton(
            iconPath: "assets/icons/Minus.svg", onPressed: onDecrement),
        SizedBox(
          width: 30,
          child: Center(
            child: Text(
              numOfItem.toString(),
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontWeight: FontWeight.w500),
            ),
          ),
        ),
        AppIconButton(
          iconPath: "assets/icons/Plus1.svg",
          onPressed: onIncrement,
        ),
      ],
    );
  }
}
