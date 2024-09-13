import 'package:example/l10n/l10n.dart';
import 'package:example/ui/route/route_constants.dart';
import 'package:example/ui/screen/basket/bloc/cart_bloc.dart';
import 'package:example/ui/screen/basket/bloc/cart_event.dart';
import 'package:example/ui/screen/basket/bloc/cart_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class SuccessOrderScreen extends StatefulWidget {
  const SuccessOrderScreen({super.key});

  @override
  State<SuccessOrderScreen> createState() => _SuccessOrderScreenState();
}

class _SuccessOrderScreenState extends State<SuccessOrderScreen>
    with TickerProviderStateMixin {
  late AnimationController controllerCheckOn;
  bool showTruckAnimation = false;
  @override
  void initState() {
    super.initState();
    controllerCheckOn = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    context.read<CartBloc>().add(CreateOrder());
    controllerCheckOn
      ..addStatusListener(
        (status) {
          if (status == AnimationStatus.completed) {
            showTruckAnimation = true;
            setState(() {});
          }
        },
      )
      ..forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<CartBloc, CartState>(
          builder: (context, state) {
            if (state is CartSuccessOrder) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    context.l10n.success_pay,
                    style: Theme.of(context).appBarTheme.titleTextStyle,
                  ),
                  LottieBuilder.asset(
                    'assets/lottie/check_on.json',
                    repeat: false,
                    height: 200,
                    width: 200,
                    controller: controllerCheckOn,
                  ),
                  const SizedBox(height: 130),
                  AnimatedOpacity(
                    opacity: showTruckAnimation ? 1 : 0,
                    duration: const Duration(seconds: 1),
                    child: Column(
                      children: [
                        Text(
                          context.l10n.on_road,
                          style: Theme.of(context).appBarTheme.titleTextStyle,
                        ),
                        LottieBuilder.asset(
                          'assets/lottie/truck.json',
                          repeat: true,
                          animate: true,
                          height: 150,
                          width: 150,
                        ),
                      ],
                    ),
                  ),
                ],
              );
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
      floatingActionButton: showTruckAnimation
          ? FloatingActionButton.extended(
              onPressed: () {
                context.read<CartBloc>().add(CreateNewBasket());
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  entryPointScreenRoute,
                  ModalRoute.withName('/'),
                );
              },
              label: Row(
                children: [
                  const Icon(Icons.home),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(context.l10n.home),
                ],
              ),
            )
          : const SizedBox.shrink(),
    );
  }
}
