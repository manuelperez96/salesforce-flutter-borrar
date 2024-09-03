import 'package:example/constants.dart';
import 'package:flutter/material.dart';
import 'package:sf_commerce_sdk/models/responses/product/product.dart';

class CartButton extends StatelessWidget {
  const CartButton({
    required this.product,
    required this.press,
    required this.productQuantity,
    super.key,
    this.title = 'Buy Now',
    this.subTitle = 'Unit price',
  });

  final Product product;
  final String title;
  final String subTitle;
  final VoidCallback press;
  final int productQuantity;
  @override
  Widget build(BuildContext context) {
    final stock = product.inventory.stockLevel;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding,
          vertical: defaultBorderRadius / 2,
        ),
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
                        horizontal: defaultPadding,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            // product.currency + // `TODO` Currency USD -> $
                            '\$${_getTotalPrice()}',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            subTitle,
                            style: const TextStyle(
                              color: Colors.white54,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
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

  String _getTotalPrice() =>
      (product.price * productQuantity).toStringAsFixed(2);
}
