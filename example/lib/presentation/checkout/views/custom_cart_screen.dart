import 'package:example/components/product/horizontal_product_card.dart';
import 'package:example/constants.dart';
import 'package:example/presentation/checkout/views/bloc/cart_bloc.dart';
import 'package:example/presentation/checkout/views/bloc/cart_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomCartScreen extends StatelessWidget {
  const CustomCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(builder: (context, state) {
      if (state is CartLoading || state is CartInitial) {
        return Scaffold(
          body: const Center(
            child: CircularProgressIndicator(),
          ),
        );
      } else {
        final currentState = state as CartLoaded;
        if (currentState.products.isEmpty) {
          return Scaffold(
            body: const Center(
              child: Text("Cart is empty"),
            ),
          );
        } else {
          return Scaffold(
            body: Column(
              children: [
                SizedBox(
                  height: MediaQuery.paddingOf(context).top,
                ),
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.all(defaultPadding),
                    itemCount: state.products.length,
                    itemBuilder: (context, index) => HorizontalProductCard(
                        productCart: state.products[index]),
                  ),
                ),
              ],
            ),
            floatingActionButton: FloatingActionButton.extended(
              onPressed: () {},
              label: Row(
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
