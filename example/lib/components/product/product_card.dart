import 'package:flutter/material.dart';
import 'package:sf_commerce_sdk/models/responses/product/product_preview_by_category.dart';

import '../../constants.dart';
import '../network_image_with_loader.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.press,
    required this.product,
    this.bottomWidget = const SizedBox(),
    this.showBookmark = false,
  });
  final ProductPreviewByCategory product;
  final VoidCallback press;
  final Widget bottomWidget;
  final bool showBookmark;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: press,
      style: OutlinedButton.styleFrom(
          minimumSize: const Size(140, 220),
          maximumSize: const Size(140, 260),
          padding: const EdgeInsets.all(8)),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1.15,
            child: Stack(
              children: [
                NetworkImageWithLoader(product.image.link,
                    radius: defaultBorderRadius),
                // if (product.dicountpercent != null)
                //   Positioned(
                //     right: defaultPadding / 2,
                //     top: defaultPadding / 2,
                //     child: Container(
                //       padding: const EdgeInsets.symmetric(
                //           horizontal: defaultPadding / 2),
                //       height: 16,
                //       decoration: const BoxDecoration(
                //         color: errorColor,
                //         borderRadius: BorderRadius.all(
                //             Radius.circular(defaultBorderRadius)),
                //       ),
                //       child: Text(
                //         "${product.dicountpercent}% off",
                //         style: const TextStyle(
                //             color: Colors.white,
                //             fontSize: 10,
                //             fontWeight: FontWeight.w500),
                //       ),
                //     ),
                //   ),
                // if (showBookmark) BookmarkIconButton(product: product),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: defaultPadding / 2, vertical: defaultPadding / 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Text(
                  //   product.brandName.toUpperCase(),
                  //   style: Theme.of(context)
                  //       .textTheme
                  //       .bodyMedium!
                  //       .copyWith(fontSize: 10),
                  // ),
                  const SizedBox(height: defaultPadding / 2),
                  // Text(
                  //   product.title,
                  //   maxLines: 2,
                  //   overflow: TextOverflow.ellipsis,
                  //   style: Theme.of(context)
                  //       .textTheme
                  //       .titleSmall!
                  //       .copyWith(fontSize: 12),
                  // ),
                  const Spacer(),
                  // product.priceAfetDiscount != null
                  //     ? Row(
                  //         children: [
                  //           Text(
                  //             "\$${product.priceAfetDiscount}",
                  //             style: const TextStyle(
                  //               color: Color(0xFF31B0D8),
                  //               fontWeight: FontWeight.w500,
                  //               fontSize: 12,
                  //             ),
                  //           ),
                  //           const SizedBox(width: defaultPadding / 4),
                  //           Text(
                  //             "\$${product.price}",
                  //             style: TextStyle(
                  //               color: Theme.of(context)
                  //                   .textTheme
                  //                   .bodyMedium!
                  //                   .color,
                  //               fontSize: 10,
                  //               decoration: TextDecoration.lineThrough,
                  //             ),
                  //           ),
                  //         ],
                  //       )
                  //     : Text(
                  //         "\$${product.price}",
                  //         style: const TextStyle(
                  //           color: Color(0xFF31B0D8),
                  //           fontWeight: FontWeight.w500,
                  //           fontSize: 12,
                  //         ),
                  //       ),
                ],
              ),
            ),
          ),
          bottomWidget,
        ],
      ),
    );
  }
}
