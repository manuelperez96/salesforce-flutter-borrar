import 'package:example/constants.dart';
import 'package:flutter/material.dart';

CheckboxThemeData checkboxThemeData = CheckboxThemeData(
  checkColor: WidgetStateProperty.all(Colors.white),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(defaultBorderRadius / 2),
    ),
  ),
  side: const BorderSide(color: whileColor40),
);
