import 'package:example/di/app_modules.dart';
import 'package:example/presentation/home/views/components/custom_banner.dart';
import 'package:example/presentation/home/views/components/shimmer/custom_section_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:sf_commerce_sdk/models/responses/category/category.dart';
import 'package:sf_commerce_sdk/models/responses/product/product_by_category.dart';
import 'package:sf_commerce_sdk/sf_commerce_sdk.dart';
import 'package:shimmer/shimmer.dart';

class CustomHomeScreen extends StatefulWidget {
  const CustomHomeScreen({super.key});

  @override
  State<CustomHomeScreen> createState() => _CustomHomeScreenState();
}

class _CustomHomeScreenState extends State<CustomHomeScreen> {
  List<Category>? categoryList;
  List<List<ProductByCategory>> lista = List.empty(growable: true);

  @override
  void initState() {
    super.initState();
    Future(
      () async {
        categoryList = await inject<SFCommerceSDK>().getRootCategories();
        for (Category category in categoryList!) {
          lista.add(
              await inject<SFCommerceSDK>().getProductsByCategory(category.id));
        }
        setState(() {});
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return categoryList == null
        ? const HomeShimmer()
        : SingleChildScrollView(
            child: Column(children: [
              SizedBox(
                height: MediaQuery.paddingOf(context).top,
              ),
              ...List.generate(
                categoryList!.length,
                (index) {
                  return CustomBanner(
                    category: categoryList![index],
                    productList: lista[index],
                  );
                },
              ),
            ]),
          );
  }
}

class HomeShimmer extends StatelessWidget {
  const HomeShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade200,
      highlightColor: Colors.grey.shade300,
      child: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSectionShimmer(),
            SizedBox(height: 24),
            CustomSectionShimmer(),
            SizedBox(height: 24),
            CustomSectionShimmer(),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
