import 'package:example/components/product/product_card.dart';
import 'package:example/constants.dart';
import 'package:example/models/product_model.dart';
import 'package:example/presentation/checkout/views/bloc/cart_bloc.dart';
import 'package:example/presentation/checkout/views/bloc/cart_event.dart';
import 'package:example/presentation/checkout/views/bloc/cart_state.dart';
import 'package:example/presentation/product/views/components/product_quantity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<CartBloc, CartState>(
          builder: (context, state) {
            if (state is CartInitial) {
              return const Center(
                child: Text("Cart is empty"),
              );
            }

            if (state is CartLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if (state is CartLoaded) {
              if (state.products.isEmpty) {
                return const Center(
                  child: Text("Cart is empty"),
                );
              }

              Map<String, List<ProductModel>> groupedProducts = {};
              for (var product in state.products) {
                groupedProducts
                    .putIfAbsent(product.id.toString(), () => [])
                    .add(product);
              }

              List<Widget> productCards = [];
              groupedProducts.forEach((id, products) {
                final product = products.first;
                final quantity = products.length;

                Widget productCard = Padding(
                  padding: const EdgeInsets.only(
                    left: defaultPadding,
                    right: defaultPadding,
                  ),
                  child: ProductCard(
                    product: product,
                    press: () {},
                    bottomWidget: ProductQuantity(
                      numOfItem: quantity,
                      onIncrement: () {
                        BlocProvider.of<CartBloc>(context)
                            .add(AddProductCart(product, 1));
                      },
                      onDecrement: () {
                        BlocProvider.of<CartBloc>(context)
                            .add(RemoveProductCart(product));
                      },
                    ),
                  ),
                );

                productCards.add(productCard);
              });

              return Align(
                alignment: Alignment.topCenter,
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 4.0,
                  runSpacing: 4.0,
                  children: productCards,
                ),
              );
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}
