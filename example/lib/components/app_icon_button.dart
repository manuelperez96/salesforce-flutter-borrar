import 'package:example/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppIconButton extends StatelessWidget {
  const AppIconButton({
    required this.iconPath,
    required this.onPressed,
    super.key,
  });
  final String iconPath;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 40,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.all(defaultPadding / 2),
        ),
        child: SvgPicture.asset(
          iconPath,
          colorFilter: ColorFilter.mode(
            Theme.of(context).iconTheme.color ?? Colors.white,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
