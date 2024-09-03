import 'package:example/components/product/horizontal_product_card.dart';
import 'package:example/constants.dart';
import 'package:example/presentation/checkout/views/bloc/cart_bloc.dart';
import 'package:example/presentation/checkout/views/bloc/cart_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(builder: (context, state) {
      if (state is CartLoading || state is CartInitial) {
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      } else {
        final currentState = state as CartLoaded;
        if (currentState.products.isEmpty) {
          return const Scaffold(
            body: Center(
              child: Text("Cart is empty"),
            ),
          );
        } else {
          return Scaffold(
            body: ListView.builder(
              padding: const EdgeInsets.all(defaultPadding),
              itemCount: state.products.length + 1,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return SizedBox(
                    height: MediaQuery.paddingOf(context).top,
                  );
                }
                return HorizontalProductCard(
                    productCart: state.products[index - 1]);
              },
            ),
            floatingActionButton: FloatingActionButton.extended(
              onPressed: () {},
              label: const Row(
                children: [
                  Text('Checkout'),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(Icons.keyboard_arrow_right_rounded)
                ],
              ),
            ),
          );
        }
      }
    });
  }
}
