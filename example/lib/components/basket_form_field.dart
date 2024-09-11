import 'package:flutter/material.dart';

class CheckoutFormField extends StatelessWidget {
  const CheckoutFormField({
    required this.controller,
    required this.hint,
    required this.validate,
    super.key,
  });

  final TextEditingController controller;
  final String hint;
  final void Function() validate;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (_) => validate(),
      controller: controller,
      decoration: InputDecoration(hintText: hint),
    );
  }
}
