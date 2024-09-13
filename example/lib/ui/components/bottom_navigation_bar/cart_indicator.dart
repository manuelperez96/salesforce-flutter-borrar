import 'package:example/constants.dart';
import 'package:example/ui/screen/basket/bloc/cart_bloc.dart';
import 'package:example/ui/screen/basket/bloc/cart_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartIndicator extends StatelessWidget {
  const CartIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        if (state is CartLoaded && state.currentCart.productItems.isNotEmpty) {
          return Container(
            width: 16,
            height: 16,
            decoration: const BoxDecoration(
              color: primaryColor,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                '${state.currentCart.productItems.length}',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
