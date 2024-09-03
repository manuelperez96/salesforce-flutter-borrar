import 'package:example/components/network_image_with_loader.dart';
import 'package:example/constants.dart';
import 'package:example/presentation/home/views/components/custom_product_card.dart';
import 'package:flutter/material.dart';
import 'package:sf_commerce_sdk/models/responses/category/category.dart';
import 'package:sf_commerce_sdk/models/responses/product/product_preview_by_category.dart';

class CustomBanner extends StatelessWidget {
  const CustomBanner({
    required this.category,
    required this.productList,
    super.key,
  });
  final Category category;
  final List<ProductPreviewByCategory> productList;

  @override
  Widget build(BuildContext context) {
    return category.menuBannerImage == null
        ? const SizedBox.shrink()
        : Column(
            children: [
              AspectRatio(
                aspectRatio: 1.87,
                child: Stack(
                  children: [
                    NetworkImageWithLoader(
                      category.menuBannerImage!,
                      radius: 0,
                    ),
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
                            if (category.pageTitle != null)
                              SizedBox(
                                width: MediaQuery.sizeOf(context).width * 0.7,
                                child: Text(
                                  category.pageTitle!,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                              )
                            else
                              const SizedBox.shrink(),
                          ],
                        ),
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.all(defaultPadding),
                    //   child: Align(
                    //     alignment: Alignment.centerRight,
                    //     child: RightArrowButtonBanner(
                    //       onTap: () {},
                    //     ),
                    //   ),
                    // ),
                  ],
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
              ),
            ],
          );
  }
}
