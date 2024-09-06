import 'package:example/components/network_image_with_loader.dart';
import 'package:example/constants.dart';
import 'package:example/models/product_cart.dart';
import 'package:example/presentation/checkout/views/bloc/cart_bloc.dart';
import 'package:example/presentation/checkout/views/bloc/cart_event.dart';
import 'package:example/presentation/product/views/components/product_quantity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HorizontalProductCard extends StatelessWidget {
  const HorizontalProductCard({required this.productCart, super.key});

  final ProductCart productCart;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.symmetric(
        horizontal: defaultPadding / 2,
        vertical: defaultPadding,
      ),
      height: 130,
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).focusColor),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 1.15,
            child: NetworkImageWithLoader(
              productCart.product.images.first.images.first.link,
              radius: defaultBorderRadius,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productCart.product.name,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(fontSize: 12),
                ),
                const Spacer(),
                Row(
                  children: [
                    Text(
                      productCart.getTotalPrice(),
                      style: const TextStyle(
                        color: Color(0xFF31B0D8),
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                    ),
                    const Spacer(),
                    ProductQuantity(
                      numOfItem: productCart.quantity,
                      onIncrement: () {
                        context.read<CartBloc>().add(
                              ModifyQuantityProductCart(
                                product: productCart.product,
                                increase: true,
                              ),
                            );
                      },
                      onDecrement: () {
                        context.read<CartBloc>().add(
                              ModifyQuantityProductCart(
                                product: productCart.product,
                                increase: false,
                              ),
                            );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
