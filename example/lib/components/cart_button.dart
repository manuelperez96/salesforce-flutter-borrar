import 'package:flutter/material.dart';
import 'package:sf_commerce_sdk/models/responses/product/product.dart';

import '../constants.dart';

class CartButton extends StatelessWidget {
  const CartButton({
    super.key,
    required this.product,
    this.title = "Buy Now",
    this.subTitle = "Unit price",
    required this.press,
    required this.productQuantity,
  });

  final Product product;
  final String title, subTitle;
  final VoidCallback press;
  final int productQuantity;
  @override
  Widget build(BuildContext context) {
    final int stock = product.inventory.stockLevel;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: defaultPadding, vertical: defaultBorderRadius / 2),
        child: SizedBox(
          height: 64,
          child: Material(
            color: stock == 0 ? Colors.grey : primaryColor,
            clipBehavior: Clip.hardEdge,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(defaultBorderRadius),
              ),
            ),
            child: InkWell(
              onTap: stock == 0 ? null : press,
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            // product.currency + // TODO Currency USD -> $
                            "\$${(product.price * productQuantity).toStringAsFixed(2)}",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            subTitle,
                            style: const TextStyle(
                                color: Colors.white54,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      alignment: Alignment.center,
                      height: double.infinity,
                      color: Colors.black.withOpacity(0.15),
                      child: Text(
                        title,
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
