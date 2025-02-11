import 'package:example/constants.dart';
import 'package:example/ui/components/cart_button.dart';
import 'package:example/ui/components/custom_modal_bottom_sheet.dart';
import 'package:example/ui/screen/basket/bloc/cart_bloc.dart';
import 'package:example/ui/screen/basket/bloc/cart_event.dart';
import 'package:example/ui/screen/product/views/added_to_cart_message_screen.dart';
import 'package:example/ui/screen/product/views/components/product_images.dart';
import 'package:example/ui/screen/product/views/components/unit_price.dart';
import 'package:example/ui/screen/product_detail/bloc/product_detail_bloc.dart';
import 'package:example/ui/screen/product_detail/components/product_detail_quantity_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductDetailBloc, ProductDetailState>(
      builder: (context, state) {
        if (state.status == ProductDetailStatus.loading) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }
        final initialProduct = state.initialProduct!;
        final productQuantity = state.productQuantity!;
        // final imageByColor = Product.getImagesByColor(
        //   selectedColor: state.selectedColor ?? '', // For items without color
        //   imageGroups: initialProduct.imageGroups,
        // );

        return Scaffold(
          bottomNavigationBar: CartButton(
            product: initialProduct,
            productQuantity: productQuantity,
            title: 'Add to cart',
            subTitle: 'Total price',
            press: () {
              BlocProvider.of<CartBloc>(context).add(
                AddProductCart(
                  state.initialProduct!.id,
                  productQuantity,
                ),
              ); // TODOChange initialProduct for selectedProductId
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
                  title: Text(initialProduct.shortDescription ?? ''),
                ),
                ProductImages(
                  images: initialProduct.representativeUrlImages,
                ),
                SliverPadding(
                  padding: const EdgeInsets.all(defaultPadding),
                  sliver: SliverToBoxAdapter(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(child: UnitPrice(price: initialProduct.price)),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const ProductDetailQuantitySelector(),
                            Text(
                              'Stock: ${initialProduct.availableStock}',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.all(defaultPadding),
                  sliver: SliverToBoxAdapter(
                    child: Text(
                      initialProduct.name,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.all(defaultPadding),
                  sliver: SliverToBoxAdapter(
                    child: Text(initialProduct.shortDescription ?? ''),
                  ),
                ),
                const SliverToBoxAdapter(child: Divider()),
                //const SliverToBoxAdapter(child: ProductSizeColorSelectors()),
                const SliverToBoxAdapter(
                  child: SizedBox(height: defaultPadding),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
