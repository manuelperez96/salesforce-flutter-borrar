import 'package:example/di/app_modules.dart';
import 'package:example/presentation/home/views/components/custom_banner.dart';
import 'package:flutter/material.dart';
import 'package:sf_commerce_sdk/models/responses/category/category.dart';
import 'package:sf_commerce_sdk/models/responses/product/product_by_category.dart';
import 'package:sf_commerce_sdk/sf_commerce_sdk.dart';

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
    return Scaffold(
      body: SafeArea(
        child: categoryList == null
            ? const Center(child: CircularProgressIndicator())
            : SingleChildScrollView(
                child: Column(
                    children: List.generate(
                  categoryList!.length,
                  (index) {
                    return CustomBanner(
                      category: categoryList![index],
                      productList: lista[index],
                    );
                  },
                )),
                // slivers: [
                //   const SliverToBoxAdapter(child: OffersCarouselAndCategories()),
                //   const SliverToBoxAdapter(child: PopularProducts()),
                //   const SliverPadding(
                //     padding: EdgeInsets.symmetric(vertical: defaultPadding * 1.5),
                //     sliver: SliverToBoxAdapter(child: FlashSale()),
                //   ),
                //   SliverToBoxAdapter(
                //     child: Column(
                //       children: [
                //         // While loading use 👇
                //         // const BannerMSkelton(),
                //         BannerSStyle1(
                //           title: "New \narrival",
                //           subtitle: "SPECIAL OFFER",
                //           discountParcent: 50,
                //           press: () {
                //             Navigator.pushNamed(context, onSaleScreenRoute);
                //           },
                //         ),
                //         const SizedBox(height: defaultPadding / 4),
                //         // We have 4 banner styles, all in the pro version
                //       ],
                //     ),
                //   ),
                //   const SliverToBoxAdapter(child: BestSellers()),
                //   const SliverToBoxAdapter(child: MostPopular()),
                //   SliverToBoxAdapter(
                //     child: Column(
                //       children: [
                //         const SizedBox(height: defaultPadding * 1.5),

                //         const SizedBox(height: defaultPadding / 4),
                //         // While loading use 👇
                //         // const BannerSSkelton(),
                //         BannerSStyle5(
                //           title: "Black \nfriday",
                //           subtitle: "50% Off",
                //           bottomText: "Collection".toUpperCase(),
                //           press: () {
                //             Navigator.pushNamed(context, onSaleScreenRoute);
                //           },
                //         ),
                //         const SizedBox(height: defaultPadding / 4),
                //       ],
                //     ),
                //   ),
                //   const SliverToBoxAdapter(child: BestSellers()),
                // ],
              ),
      ),
    );
  }
}
