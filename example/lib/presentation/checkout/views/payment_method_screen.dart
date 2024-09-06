import 'package:example/components/basket_double_form_field.dart';
import 'package:example/components/basket_form_field.dart';
import 'package:example/constants.dart';
import 'package:example/presentation/basket/bloc/cart_bloc.dart';
import 'package:example/presentation/basket/bloc/cart_event.dart';
import 'package:example/route/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({super.key});

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  bool showFloating = false;
  late TextEditingController _numberCardController;
  late TextEditingController _dateController;
  late TextEditingController _cvcController;

  @override
  void initState() {
    super.initState();
    _numberCardController = TextEditingController();
    _dateController = TextEditingController();
    _cvcController = TextEditingController();
  }

  void validate() {
    if (_numberCardController.text.isNotEmpty &&
        _dateController.text.isNotEmpty &&
        _cvcController.text.isNotEmpty) {
      showFloating = true;
    } else {
      showFloating = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dirección de envío'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyField(
                controller: _numberCardController,
                hint: 'Card Number',
                validate: validate,
              ),
              const SizedBox(height: defaultPadding),
              MyDoubleRowField(
                controller: _dateController,
                hint: 'month / year',
                controller2: _cvcController,
                hint2: 'CVC',
                validate: validate,
              ),
              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          context.read<CartBloc>().add(AddPaymentMethod());
          Navigator.pushNamed(context, orderScreenRoute);
        },
        label: const Row(
          children: [
            Text('Continuar'),
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
