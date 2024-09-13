import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RightArrowButtonBanner extends StatelessWidget {
  const RightArrowButtonBanner({required this.onTap, super.key});
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: 48,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: Colors.white,
        ),
        child: SvgPicture.asset(
          'assets/icons/Arrow - Right.svg',
          colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
        ),
      ),
    );
  }
}
