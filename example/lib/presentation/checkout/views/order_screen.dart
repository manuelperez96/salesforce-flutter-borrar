import 'package:example/presentation/basket/bloc/cart_bloc.dart';
import 'package:example/presentation/basket/bloc/cart_event.dart';
import 'package:example/presentation/basket/bloc/cart_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          if (state is CartSuccessOrder) {
            return const Center(
              child: Text('exitazoooo!!!!!!  status = 200'),
            );
          } else {
            return const Center(
              child: Text('order_screen'),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          context.read<CartBloc>().add(CreateOrder());
        },
        label: const Row(
          children: [
            Text('Create Order'),
            SizedBox(
              width: 5,
            ),
            Icon(Icons.keyboard_arrow_right_rounded),
          ],
        ),
      ),
    );
  }
}
