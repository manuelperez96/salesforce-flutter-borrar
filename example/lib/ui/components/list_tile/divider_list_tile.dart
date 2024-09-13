import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DividerListTile extends StatelessWidget {
  const DividerListTile({
    required this.title,
    required this.press,
    super.key,
    this.isShowForwordArrow = true,
    this.leading,
    this.minLeadingWidth,
    this.isShowDivider = true,
  });
  final bool isShowForwordArrow;
  final bool isShowDivider;
  final Widget title;
  final Widget? leading;
  final double? minLeadingWidth;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          minLeadingWidth: minLeadingWidth,
          leading: leading,
          onTap: press,
          title: title,
          trailing: isShowForwordArrow
              ? SvgPicture.asset(
                  'assets/icons/miniRight.svg',
                  colorFilter: ColorFilter.mode(
                    Theme.of(context).iconTheme.color!.withOpacity(0.4),
                    BlendMode.srcIn,
                  ),
                )
              : null,
        ),
        if (isShowDivider) const Divider(height: 1),
      ],
    );
  }
}

class DividerListTileWithTrilingText extends StatelessWidget {
  const DividerListTileWithTrilingText({
    required this.svgSrc,
    required this.title,
    required this.trilingText,
    required this.press,
    super.key,
    this.isShowArrow = true,
  });

  final String svgSrc;
  final String title;
  final String trilingText;
  final VoidCallback press;
  final bool isShowArrow;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: press,
          minLeadingWidth: 24,
          leading: SvgPicture.asset(
            svgSrc,
            height: 24,
            width: 24,
            colorFilter: ColorFilter.mode(
              Theme.of(context).iconTheme.color!,
              BlendMode.srcIn,
            ),
          ),
          title: Text(
            title,
            style: const TextStyle(fontSize: 14, height: 1),
          ),
          trailing: SizedBox(
            width: 50,
            child: Row(
              children: [
                const Spacer(),
                Text(trilingText),
                SvgPicture.asset(
                  'assets/icons/miniRight.svg',
                  colorFilter: ColorFilter.mode(
                    Theme.of(context).iconTheme.color!.withOpacity(0.4),
                    BlendMode.srcIn,
                  ),
                ),
              ],
            ),
          ),
        ),
        if (isShowArrow) const Divider(height: 1),
      ],
    );
  }
}
