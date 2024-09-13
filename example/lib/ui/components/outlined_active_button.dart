import 'package:example/constants.dart';
import 'package:flutter/material.dart';

class OutlinedActiveButton extends StatelessWidget {
  const OutlinedActiveButton({
    required this.text,
    required this.press,
    super.key,
    this.isActive = false,
  });

  final String text;
  final VoidCallback press;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: press,
      style: isActive
          ? OutlinedButton.styleFrom(
              backgroundColor: primaryColor,
              foregroundColor: Colors.white,
            )
          : null,
      child: Text(text),
    );
  }
}
