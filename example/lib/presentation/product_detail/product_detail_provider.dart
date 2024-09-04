import 'package:example/di/app_modules.dart';
import 'package:example/presentation/product_detail/bloc/product_detail_bloc.dart';
import 'package:example/presentation/product_detail/product_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetailProvider extends StatelessWidget {
  const ProductDetailProvider({required this.productId, super.key});

  final String productId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductDetailBloc(
        initialProductId: productId,
        productRepository: inject.get(),
      )..add(const ProductDetailEvent.started()),
      child: const ProductDetailScreen(),
    );
  }
}
