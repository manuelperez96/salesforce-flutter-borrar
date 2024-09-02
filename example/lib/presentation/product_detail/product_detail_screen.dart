import 'package:example/components/cart_button.dart';
import 'package:example/components/custom_modal_bottom_sheet.dart';
import 'package:example/constants.dart';
import 'package:example/presentation/checkout/views/bloc/cart_bloc.dart';
import 'package:example/presentation/checkout/views/bloc/cart_event.dart';
import 'package:example/presentation/product/views/added_to_cart_message_screen.dart';
import 'package:example/presentation/product/views/components/product_images.dart';
import 'package:example/presentation/product/views/components/product_quantity.dart';
import 'package:example/presentation/product/views/components/selected_colors.dart';
import 'package:example/presentation/product/views/components/selected_size.dart';
import 'package:example/presentation/product/views/components/unit_price.dart';
import 'package:example/presentation/product_detail/bloc/product_detail_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sf_commerce_sdk/models/responses/product/product.dart';

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
                        ProductQuantity(
                          numOfItem: productQuantity,
                          onIncrement: () =>
                              BlocProvider.of<ProductDetailBloc>(context).add(
                            ProductDetailEvent.updateQuantity(
                                productQuantity + 1),
                          ),
                          onDecrement: () =>
                              BlocProvider.of<ProductDetailBloc>(context).add(
                            ProductDetailEvent.updateQuantity(
                                (productQuantity > product.minOrderQuantity!)
                                    ? productQuantity - 1
                                    : product.minOrderQuantity!),
                          ),
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
                // TODO Stock maximo
                // TODO Si no hay stock que no se pueda seleccionar
                const SliverToBoxAdapter(child: Divider()),
                if (_hasVariationAttribute(
                    product: product, attributeId: "color"))
                  SliverToBoxAdapter(
                    child: SelectedColors(
                      // TODO finish this when Saleforce responds
                      // colors: widget.product.variationAttributes
                      //     .firstWhere((element) => element.id == "color")
                      //     .values
                      //     .map((color) => color.value)
                      //     .toList(),

                      colors: const [
                        Color(0xFFEA6262),
                        Color(0xFFB1CC63),
                        Color(0xFFFFBF5F),
                        Color(0xFF9FE1DD),
                        Color(0xFFC482DB),
                      ],
                      selectedColorIndex: 2,
                      press: (value) {},
                    ),
                  ),
                if (_hasVariationAttribute(
                    product: product, attributeId: "size"))
                  SliverToBoxAdapter(
                    child: SelectedSize(
                      sizes: product.variationAttributes!
                          .firstWhere((element) => element.id == "size")
                          .values
                          .map((size) => size.name)
                          .toList(),
                      selectedIndex: 1,
                      press: (value) {},
                    ),
                  ),
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

  bool _hasVariationAttribute(
      {required Product product, required String attributeId}) {
    return product.variationAttributes != null &&
        product.variationAttributes!
            .any((element) => element.id == attributeId);
  }
}
