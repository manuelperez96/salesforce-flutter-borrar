import 'package:example/constants.dart';
import 'package:example/l10n/l10n.dart';
import 'package:example/ui/components/product/horizontal_product_card.dart';
import 'package:example/ui/route/route_constants.dart';
import 'package:example/ui/screen/basket/bloc/cart_bloc.dart';
import 'package:example/ui/screen/basket/bloc/cart_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        if (state is CartLoading || state is CartSuccessOrder) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else {
          final currentState = state as CartLoaded;
          if (currentState.currentCart.productItems.isEmpty) {
            return Scaffold(
              body: Center(
                child: Text(context.l10n.cart_empty),
              ),
            );
          } else {
            return Scaffold(
              body: ListView.builder(
                padding: const EdgeInsets.all(defaultPadding),
                itemCount: state.currentCart.productItems.length + 1,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return SizedBox(
                      height: MediaQuery.paddingOf(context).top,
                    );
                  }
                  return HorizontalProductCard(
                    product: state.currentCart.productItems[index - 1],
                  );
                },
              ),
              floatingActionButton: FloatingActionButton.extended(
                onPressed: () {
                  Navigator.pushNamed(context, billingAddressScreenRoute);
                },
                label: Row(
                  children: [
                    Text(context.l10n.checkout),
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(Icons.keyboard_arrow_right_rounded),
                  ],
                ),
              ),
            );
          }
        }
      },
    );
  }
}
