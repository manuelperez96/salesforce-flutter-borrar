import 'package:example/components/product/product_card.dart';
import 'package:example/constants.dart';
import 'package:example/presentation/checkout/components/remove_product_button.dart';
import 'package:example/presentation/checkout/views/bloc/cart_bloc.dart';
import 'package:example/presentation/checkout/views/bloc/cart_state.dart';
import 'package:example/route/screen_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
      ),
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

              return Align(
                alignment: Alignment.topCenter,
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 8.0,
                  runSpacing: 4.0,
                  children: List<Widget>.generate(
                    state.products.length,
                    (index) {
                      final product = state.products[
                          index]; // Asegúrate de obtener el producto actual
                      return Padding(
                        padding: EdgeInsets.only(
                          left: defaultPadding,
                          right: index == state.products.length - 1
                              ? defaultPadding
                              : 0,
                        ),
                        child: Stack(
                          children: [
                            ProductCard(
                              product: product,
                              press: () {
                                Navigator.pushNamed(
                                  context,
                                  productDetailsScreenRoute,
                                  arguments: product,
                                );
                              },
                            ),
                            Positioned(
                              top: 0,
                              left: 0,
                              child: RemoveProductButton(product: product),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
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
