import 'package:example/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TextFieldIcon extends StatelessWidget {
  const TextFieldIcon({
    required this.iconAsset,
    super.key,
  });

  final String iconAsset;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding * 0.75),
      child: SvgPicture.asset(
        iconAsset,
        height: 24,
        width: 24,
        colorFilter: ColorFilter.mode(
          Theme.of(context).textTheme.bodyLarge!.color!.withOpacity(0.3),
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
