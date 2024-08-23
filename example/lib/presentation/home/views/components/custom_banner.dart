import 'package:example/components/network_image_with_loader.dart';
import 'package:example/constants.dart';
import 'package:flutter/material.dart';
import 'package:sf_commerce_sdk/models/responses/category/category.dart';
import 'package:sf_commerce_sdk/models/responses/product/product_by_category.dart';

class CustomBanner extends StatelessWidget {
  final Category category;
  final List<ProductByCategory> productList;

  const CustomBanner({
    super.key,
    required this.category,
    required this.productList,
  });

  @override
  Widget build(BuildContext context) {
    return category.cHeaderMenuBanner.isEmpty
        ? const SizedBox.shrink()
        : Column(
            children: [
              AspectRatio(
                aspectRatio: 1.87,
                child: GestureDetector(
                  onTap: () {},
                  child: Stack(
                    children: [
                      NetworkImageWithLoader(category.cHeaderMenuBanner,
                          radius: 0),
                      Container(color: Colors.black45),
                      Padding(
                        padding: const EdgeInsets.all(defaultPadding),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  category.name,
                                  style: const TextStyle(
                                    fontFamily: grandisExtendedFont,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 24,
                                    color: Colors.white,
                                  ),
                                ),
                                category.pageTitle != null
                                    ? Text(
                                        category.pageTitle!,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                        ),
                                      )
                                    : const SizedBox.shrink(),
                              ],
                            )),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: defaultPadding / 2),
                  Padding(
                    padding: const EdgeInsets.all(defaultPadding),
                    child: Text(
                      category.name,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  SizedBox(
                    height: 220,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: productList.length,
                      itemBuilder: (context, index) => Padding(
                        padding: EdgeInsets.only(
                          left: defaultPadding,
                          right: index == productList.length - 1
                              ? defaultPadding
                              : 0,
                        ),
                        child: CustomProductCard(
                          // showBookmark: true,
                          product: productList[index],
                          //press: () {},
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                ],
              )
            ],
          );
  }
}

class CustomProductCard extends StatelessWidget {
  const CustomProductCard({
    super.key,
    required this.product,
  });
  final ProductByCategory product;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
          minimumSize: const Size(140, 220),
          maximumSize: const Size(140, 260),
          padding: const EdgeInsets.all(8)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1.15,
            child: Stack(
              children: [
                Hero(
                  tag: product.image,
                  child: NetworkImageWithLoader(product.image,
                      radius: defaultBorderRadius),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: defaultPadding / 2, vertical: defaultPadding / 2),
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
                    "${product.price} ${product.currency}",
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
