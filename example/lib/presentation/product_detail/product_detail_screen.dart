import 'package:example/components/cart_button.dart';
import 'package:example/components/custom_modal_bottom_sheet.dart';
import 'package:example/constants.dart';
import 'package:example/presentation/checkout/views/bloc/cart_bloc.dart';
import 'package:example/presentation/checkout/views/bloc/cart_event.dart';
import 'package:example/presentation/product/views/added_to_cart_message_screen.dart';
import 'package:example/presentation/product/views/components/product_images.dart';
import 'package:example/presentation/product/views/components/unit_price.dart';
import 'package:example/presentation/product_detail/bloc/product_detail_bloc.dart';
import 'package:example/presentation/product_detail/components/product_detail_quantity_selector.dart';
import 'package:example/presentation/product_detail/components/product_selectors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductDetailBloc, ProductDetailState>(
      builder: (context, state) {
        if (state.status == ProductDetailStatus.loading) {
          return const Center(child: CircularProgressIndicator());
        }
        final product = state.product!;
        final productQuantity = state.productQuantity!;
        return Scaffold(
          bottomNavigationBar: CartButton(
            product: product,
            productQuantity: productQuantity,
            title: "Add to cart",
            subTitle: "Total price",
            press: () {
              BlocProvider.of<CartBloc>(context)
                  .add(AddProductCart(product, productQuantity));
              customModalBottomSheet(
                context,
                child: const AddedToCartMessageScreen(),
              );
            },
          ),
          body: SafeArea(
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  floating: true,
                  title: Text(product.pageTitle),
                  actions: [
                    //      BookmarkIconButton(product: state.product!),
                  ],
                ),
                ProductImages(
                  images: state.product!.imageGroups.first.images
                      .map((image) => image.link)
                      .toList(),
                ),
                SliverPadding(
                  padding: const EdgeInsets.all(defaultPadding),
                  sliver: SliverToBoxAdapter(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(child: UnitPrice(price: product.price)),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            ProductDetailQuantitySelector(),
                            Text('Stock: ${product.inventory.stockLevel}'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.all(defaultPadding),
                  sliver: SliverToBoxAdapter(
                    child: Text(product.pageTitle,
                        style: Theme.of(context).textTheme.titleLarge),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.all(defaultPadding),
                  sliver: SliverToBoxAdapter(
                    child: Text(product.pageDescription),
                  ),
                ),
                const SliverToBoxAdapter(child: Divider()),
                SliverToBoxAdapter(child: ProductSelectors()),
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
}
