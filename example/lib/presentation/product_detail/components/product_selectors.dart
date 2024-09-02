import 'package:example/presentation/product/views/components/selected_colors.dart';
import 'package:example/presentation/product/views/components/selected_size.dart';
import 'package:example/presentation/product_detail/bloc/product_detail_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sf_commerce_sdk/models/responses/product/product.dart';

class ProductSelectors extends StatelessWidget {
  const ProductSelectors({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductDetailBloc, ProductDetailState>(
      builder: (context, state) {
        final product = state.product!;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (_hasVariationAttribute(product: product, attributeId: "color"))
              SelectedColors(
                product: product,
                press: (value) {},
              ),
            if (_hasVariationAttribute(product: product, attributeId: "size"))
              SelectedSize(
                product: product,
                press: (value) {},
              ),
          ],
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
