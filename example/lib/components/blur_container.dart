import 'dart:ui';

import 'package:example/constants.dart';
import 'package:flutter/material.dart';

class BlurContainer extends StatelessWidget {
  const BlurContainer({
    required this.text,
    super.key,
    this.height = 40,
    this.width = 40,
    this.fontSize = 18,
  });

  final String text;
  final double height;
  final double width;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(defaultBorderRadius / 2),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          height: height,
          width: height,
          color: Colors.white12,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: fontSize,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
