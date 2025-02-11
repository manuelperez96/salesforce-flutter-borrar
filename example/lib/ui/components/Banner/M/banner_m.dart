import 'package:example/ui/components/network_image_with_loader.dart';
import 'package:flutter/material.dart';

class BannerM extends StatelessWidget {
  const BannerM({
    required this.image,
    required this.press,
    required this.children,
    super.key,
  });

  final String image;
  final VoidCallback press;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.87,
      child: GestureDetector(
        onTap: press,
        child: Stack(
          children: [
            NetworkImageWithLoader(image, radius: 0),
            Container(color: Colors.black45),
            ...children,
          ],
        ),
      ),
    );
  }
}
