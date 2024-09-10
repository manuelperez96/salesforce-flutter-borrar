import 'package:example/components/basket_form_field.dart';
import 'package:flutter/material.dart';

class CheckoutFormDoubleField extends StatelessWidget {
  const CheckoutFormDoubleField({
    required this.controller,
    required this.hint,
    required this.controller2,
    required this.hint2,
    required this.validate,
    super.key,
  });

  final TextEditingController controller;
  final TextEditingController controller2;
  final String hint;
  final String hint2;
  final void Function() validate;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CheckoutFormField(
            controller: controller,
            hint: hint,
            validate: validate,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: CheckoutFormField(
            controller: controller2,
            hint: hint2,
            validate: validate,
          ),
        ),
      ],
    );
  }
}
