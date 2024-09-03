import 'package:example/components/network_image_with_loader.dart';
import 'package:example/constants.dart';
import 'package:example/route/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:sf_commerce_sdk/models/responses/product/product_preview_by_category.dart';

class CustomProductCard extends StatelessWidget {
  const CustomProductCard({
    required this.product,
    super.key,
  });
  final ProductPreviewByCategory product;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        Navigator.pushNamed(
          context,
          productDetailsScreenRoute,
          arguments: product.id,
        );
      },
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(140, 220),
        maximumSize: const Size(140, 260),
        padding: const EdgeInsets.all(8),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1.15,
            child: Stack(
              children: [
                NetworkImageWithLoader(
                  product.image.link,
                  radius: defaultBorderRadius,
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding / 2,
                vertical: defaultPadding / 2,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: defaultPadding / 2),
                  Text(
                    product.productName,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(fontSize: 12),
                  ),
                  const Spacer(),
                  Text(
                    '${product.price} ${product.currency}',
                    style: const TextStyle(
                      color: Color(0xFF31B0D8),
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
