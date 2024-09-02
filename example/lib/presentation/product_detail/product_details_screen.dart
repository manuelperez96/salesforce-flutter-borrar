import 'package:example/components/cart_button.dart';
import 'package:example/components/custom_modal_bottom_sheet.dart';
import 'package:example/components/review_card.dart';
import 'package:example/components/unbuy_full_ui_kit.dart';
import 'package:example/constants.dart';
import 'package:example/presentation/product/views/components/product_images.dart';
import 'package:example/presentation/product/views/components/product_list_tile.dart';
import 'package:example/presentation/product/views/product_returns_screen.dart';
import 'package:example/presentation/product_detail/bloc/product_detail_bloc.dart';
import 'package:example/route/screen_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen>
    with SingleTickerProviderStateMixin {
  bool bottomEdge = false;

  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();

    _scrollController = ScrollController()
      ..addListener(
        () {
          if (_scrollController.position.atEdge &&
              _scrollController.position.pixels != 0) {
            bottomEdge = true;
            setState(() {});
          }
        },
      );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductDetailBloc, ProductDetailState>(
      builder: (context, state) {
        print(state);
        return Scaffold(
          bottomNavigationBar: CartButton(
            price: 140,
            press: () {
              // customModalBottomSheet(
              //   context,
              //   height: MediaQuery.of(context).size.height * 0.92,
              //   child: ProductBuyNowScreen(product: widget.product),
              // );
            },
          ),
          body: SafeArea(
            child: CustomScrollView(
              controller: _scrollController,
              slivers: [
                SliverAppBar(
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  floating: true,
                  actions: [
                    // BookmarkIconButton(product: widget.product),
                  ],
                ),
                const ProductImages(
                  images: [],
                ),

                ProductListTile(
                  svgSrc: "assets/icons/Product.svg",
                  title: "Product Details",
                  press: () {
                    customModalBottomSheet(
                      context,
                      height: MediaQuery.of(context).size.height * 0.92,
                      child: const UnBuyFullKit(
                          images: ["assets/screens/Product detail.png"]),
                    );
                  },
                ),
                ProductListTile(
                  svgSrc: "assets/icons/Delivery.svg",
                  title: "Shipping Information",
                  press: () {
                    customModalBottomSheet(
                      context,
                      height: MediaQuery.of(context).size.height * 0.92,
                      child: const UnBuyFullKit(
                        images: ["assets/screens/Shipping information.png"],
                      ),
                    );
                  },
                ),
                ProductListTile(
                  svgSrc: "assets/icons/Return.svg",
                  title: "Returns",
                  isShowBottomBorder: true,
                  press: () {
                    customModalBottomSheet(
                      context,
                      height: MediaQuery.of(context).size.height * 0.92,
                      child: const ProductReturnsScreen(),
                    );
                  },
                ),
                const SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.all(defaultPadding),
                    child: ReviewCard(
                      rating: 4.3,
                      numOfReviews: 128,
                      numOfFiveStar: 80,
                      numOfFourStar: 30,
                      numOfThreeStar: 5,
                      numOfTwoStar: 4,
                      numOfOneStar: 1,
                    ),
                  ),
                ),
                ProductListTile(
                  svgSrc: "assets/icons/Chat.svg",
                  title: "Reviews",
                  isShowBottomBorder: true,
                  press: () {
                    Navigator.pushNamed(context, productReviewsScreenRoute);
                  },
                ),
                SliverPadding(
                  padding: const EdgeInsets.all(defaultPadding),
                  sliver: SliverToBoxAdapter(
                    child: Text(
                      "You may also like",
                      style: Theme.of(context).textTheme.titleSmall!,
                    ),
                  ),
                ),
                // SliverToBoxAdapter(
                //   child: SizedBox(
                //     height: 220,
                //     child: bottomEdge
                //         ? ListView.builder(
                //             scrollDirection: Axis.horizontal,
                //             itemCount: 5,
                //             itemBuilder: (context, index) => Padding(
                //               padding: EdgeInsets.only(
                //                   left: defaultPadding,
                //                   right: index == 4 ? defaultPadding : 0),
                //               child: FutureBuilder(
                //                 future: awaitDelayed(index),
                //                 builder: (context, snapshot) {
                //                   return AnimatedOpacity(
                //                     duration: const Duration(milliseconds: 300),
                //                     opacity: snapshot.connectionState ==
                //                             ConnectionState.done
                //                         ? 1
                //                         : 0,
                //                     child: ProductCard(
                //                       product: demoPopularProducts  [index],
                //                       press: () {},
                //                     ),
                //                   );
                //                 },
                //               ),
                //             ),
                //           )
                //         : const SizedBox.shrink(),
                //   ),
                // ),
                const SliverToBoxAdapter(
                  child: SizedBox(height: defaultPadding),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Future<void> awaitDelayed(int index) async {
    await Future.delayed(Duration(milliseconds: 300 * index));
    return;
  }
}
