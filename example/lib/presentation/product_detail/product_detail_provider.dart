import 'package:example/di/app_modules.dart';
import 'package:example/presentation/product_detail/bloc/product_detail_bloc.dart';
import 'package:example/presentation/product_detail/product_detail_screen.dart';
import 'package:example/route/screen_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sf_commerce_sdk/sf_commerce_sdk.dart';

class ProductDetailProvider extends StatelessWidget {
  const ProductDetailProvider({super.key, required this.productId});

  final String productId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductDetailBloc(
        productId: productId,
        productRepository: inject<SFCommerceSDK>().productRepository,
      )..add(const ProductDetailEvent.started()),
      child: ProductDetailScreen(),
    );
  }
}
