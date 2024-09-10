import 'package:example/components/basket_double_form_field.dart';
import 'package:example/components/basket_form_field.dart';
import 'package:example/constants.dart';
import 'package:example/l10n/l10n.dart';
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
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.payment_method_title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CheckoutFormField(
                controller: _numberCardController,
                hint: context.l10n.payment_method_credit_card_number,
                validate: validate,
              ),
              const SizedBox(height: defaultPadding),
              CheckoutFormDoubleField(
                controller: _dateController,
                hint: context.l10n.payment_method_credit_card_date,
                controller2: _cvcController,
                hint2: context.l10n.payment_method_credit_card_cvc,
                validate: validate,
              ),
              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
      floatingActionButton: AnimatedOpacity(
        duration: const Duration(seconds: 1),
        opacity: showFloating ? 1 : 0.3,
        child: FloatingActionButton.extended(
          onPressed: () {
            if (showFloating) {
              context.read<CartBloc>().add(AddPaymentMethod());
              Navigator.pushNamed(context, orderScreenRoute);
            }
          },
          label: Row(
            children: [
              Text(context.l10n.continue_button),
              const SizedBox(
                width: 5,
              ),
              const Icon(Icons.keyboard_arrow_right_rounded),
            ],
          ),
        ),
      ),
    );
  }
}
