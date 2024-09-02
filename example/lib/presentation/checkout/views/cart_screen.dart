import 'package:example/components/product/horizontal_product_card.dart';
import 'package:example/presentation/checkout/views/bloc/cart_bloc.dart';
import 'package:example/presentation/checkout/views/bloc/cart_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.paddingOf(context).top,
          ),
          Expanded(
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

                  return ListView.builder(
                    itemCount: state.products.length,
                    itemBuilder: (context, index) => HorizontalProductCard(
                        productCart: state.products[index]),
                  );

                  // List<Widget> productCards = [];
                  // state.products.forEach((productCart) {
                  //   final product = productCart.product;
                  //   final quantity = productCart.quantity;

                  //   Widget productCard = Padding(
                  //     padding: const EdgeInsets.only(
                  //       left: defaultPadding,
                  //       right: defaultPadding,
                  //     ),
                  //     child: ProductDetailCard(
                  //       product: product,
                  //       press: () {},
                  //       bottomWidget: ProductQuantity(
                  //         numOfItem: quantity,
                  //         onIncrement: () {
                  //           BlocProvider.of<CartBloc>(context).add(
                  //               ModifyQuantityProductCart(
                  //                   product: product, increase: true));
                  //         },
                  //         onDecrement: () {
                  //           BlocProvider.of<CartBloc>(context).add(
                  //               ModifyQuantityProductCart(
                  //                   product: product, increase: false));
                  //         },
                  //       ),
                  //     ),
                  //   );

                  //   productCards.add(productCard);
                  // });

                  // return Align(
                  //   alignment: Alignment.topLeft,
                  //   child: Wrap(
                  //     crossAxisAlignment: WrapCrossAlignment.center,
                  //     spacing: 4.0,
                  //     runSpacing: 4.0,
                  //     children: productCards,
                  //   ),
                  // );
                }
                return const SizedBox();
              },
            ),
          ),
        ],
      ),
    );
  }
}
