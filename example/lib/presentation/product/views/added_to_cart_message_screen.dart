import 'package:example/constants.dart';
import 'package:example/presentation/basket/bloc/cart_bloc.dart';
import 'package:example/route/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddedToCartMessageScreen extends StatelessWidget {
  const AddedToCartMessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Column(
            children: [
              const Spacer(),
              Image.asset(
                Theme.of(context).brightness == Brightness.light
                    ? 'assets/Illustration/success.png'
                    : 'assets/Illustration/success_dark.png',
                height: MediaQuery.of(context).size.height * 0.3,
              ),
              const Spacer(flex: 2),
              Text(
                'Added to cart',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: defaultPadding / 2),
              const Text(
                'Click the checkout button to complete the purchase process.',
                textAlign: TextAlign.center,
              ),
              const Spacer(flex: 2),
              OutlinedButton(
                onPressed: () {
                  Future.delayed(
                    const Duration(milliseconds: 300),
                    () {
                      if (context.mounted) {
                        context.read<CartBloc>().controller.forward();
                      }
                    },
                  );

                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    entryPointScreenRoute,
                    (route) => false,
                  );
                },
                child: const Text('Continue shopping'),
              ),
              const SizedBox(height: defaultPadding),
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Back to product'),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
