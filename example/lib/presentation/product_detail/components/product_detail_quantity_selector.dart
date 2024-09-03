import 'package:example/presentation/product/views/components/product_quantity.dart';
import 'package:example/presentation/product_detail/bloc/product_detail_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetailQuantitySelector extends StatelessWidget {
  const ProductDetailQuantitySelector({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductDetailBloc, ProductDetailState>(
      builder: (context, state) {
        final product = state.initialProduct!;
        final productQuantity = state.productQuantity!;
        return ProductQuantity(
          numOfItem: productQuantity,
          onIncrement: () => BlocProvider.of<ProductDetailBloc>(context).add(
            ProductDetailEvent.updateQuantity(
              productQuantity < product.inventory.stockLevel
                  ? (productQuantity + 1)
                  : productQuantity,
            ),
          ),
          onDecrement: () => BlocProvider.of<ProductDetailBloc>(context).add(
            ProductDetailEvent.updateQuantity(
                (productQuantity > product.minOrderQuantity!)
                    ? productQuantity - 1
                    : product.minOrderQuantity!),
          ),
        );
      },
    );
  }
}
