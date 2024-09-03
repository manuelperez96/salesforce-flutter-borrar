import 'package:example/presentation/product/views/components/selected_colors.dart';
import 'package:example/presentation/product/views/components/selected_size.dart';
import 'package:example/presentation/product_detail/bloc/product_detail_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sf_commerce_sdk/models/responses/product/product.dart';

class ProductSizeColorSelectors extends StatelessWidget {
  const ProductSizeColorSelectors({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductDetailBloc, ProductDetailState>(
      builder: (context, state) {
        final product = state.initialProduct!;

        bool hasVariationAttribute({required String attributeId}) =>
            product.variationAttributes != null &&
            product.variationAttributes!
                .any((element) => element.id == attributeId);

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (hasVariationAttribute(attributeId: 'color'))
              SelectedColors(
                product: product,
                selectedColor: state.selectedColor!,
                onPressed: (color) => context.read<ProductDetailBloc>().add(
                      ProductDetailEvent.updateSelectedColor(color.value),
                    ),
              ),
            if (hasVariationAttribute(attributeId: 'size'))
              SelectedSize(
                selectedSize: state.selectedSize!,
                sizes: product.variationAttributes!
                    .firstWhere((element) => element.id == 'size')
                    .values,
                availableValuesSizes: Product.getAvailableSizesForColor(
                  state.selectedColor!,
                  product.variants!,
                ),
                onPressed: (size) => context.read<ProductDetailBloc>().add(
                      ProductDetailEvent.updateSelectedSize(size.value),
                    ),
              ),
          ],
        );
      },
    );
  }
}
