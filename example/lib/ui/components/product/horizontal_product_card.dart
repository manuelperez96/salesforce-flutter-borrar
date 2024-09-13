import 'package:example/constants.dart';
import 'package:example/domain/model/product_cart_entity.dart';
import 'package:example/ui/components/network_image_with_loader.dart';
import 'package:example/ui/screen/basket/bloc/cart_bloc.dart';
import 'package:example/ui/screen/basket/bloc/cart_event.dart';
import 'package:example/ui/screen/product/views/components/product_quantity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HorizontalProductCard extends StatelessWidget {
  const HorizontalProductCard({required this.product, super.key});

  final ProductCartEntity product;

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
              product.image,
              radius: defaultBorderRadius,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
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
                      product.getTotalPrice(),
                      style: const TextStyle(
                        color: Color(0xFF31B0D8),
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                    ),
                    const Spacer(),
                    ProductQuantity(
                      numOfItem: product.quantity,
                      onIncrement: () {
                        context.read<CartBloc>().add(
                              IncrementQuantityProductCart(
                                product: product,
                              ),
                            );
                      },
                      onDecrement: () {
                        context.read<CartBloc>().add(
                              DecrementQuantityProductCart(
                                product: product,
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
