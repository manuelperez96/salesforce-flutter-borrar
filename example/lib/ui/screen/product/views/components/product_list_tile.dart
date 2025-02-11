import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductListTile extends StatelessWidget {
  const ProductListTile({
    required this.svgSrc,
    required this.title,
    required this.press,
    super.key,
    this.isShowBottomBorder = false,
  });

  final String svgSrc;
  final String title;
  final bool isShowBottomBorder;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          const Divider(height: 1),
          ListTile(
            onTap: press,
            minLeadingWidth: 24,
            leading: SvgPicture.asset(
              svgSrc,
              height: 24,
              colorFilter: ColorFilter.mode(
                Theme.of(context).textTheme.bodyLarge!.color ?? Colors.white,
                BlendMode.srcIn,
              ),
            ),
            title: Text(title),
            trailing: SvgPicture.asset(
              'assets/icons/miniRight.svg',
              colorFilter: ColorFilter.mode(
                Theme.of(context).textTheme.bodyMedium!.color ?? Colors.white,
                BlendMode.srcIn,
              ),
            ),
          ),
          if (isShowBottomBorder) const Divider(height: 1),
        ],
      ),
    );
  }
}
