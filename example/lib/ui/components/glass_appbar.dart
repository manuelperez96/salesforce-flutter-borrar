import 'dart:ui';

import 'package:flutter/material.dart';

class GlassAppBar extends StatelessWidget {
  const GlassAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: DecoratedBox(
          decoration: BoxDecoration(color: Colors.white.withOpacity(0.7)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(height: MediaQuery.paddingOf(context).top),
            ],
          ),
        ),
      ),
    );
  }
}
