import 'package:example/constants.dart';
import 'package:flutter/material.dart';

class ProductAvailabilityTag extends StatelessWidget {
  const ProductAvailabilityTag({
    required this.isAvailable,
    super.key,
  });

  final bool isAvailable;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding / 2),
      decoration: BoxDecoration(
        color: isAvailable ? successColor : errorColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(defaultBorderRadius / 2),
        ),
      ),
      child: Text(
        isAvailable ? 'Available in stock' : 'Currently unavailable',
        style: Theme.of(context)
            .textTheme
            .labelSmall!
            .copyWith(color: Colors.white, fontWeight: FontWeight.w500),
      ),
    );
  }
}
