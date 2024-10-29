import 'package:example/di/app_modules.dart';
import 'package:example/domain/repository/product_repository.dart';
import 'package:example/ui/screen/category/filter_by_category/bloc/filter_by_category_bloc.dart';
import 'package:example/ui/screen/home/views/components/custom_product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sf_commerce_sdk/sf_commerce_sdk.dart';

class FilterByCategoryScreen extends StatelessWidget {
  const FilterByCategoryScreen({
    required this.filter,
    super.key,
  });

  final String filter;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => FilterByCategoryBloc(
        category: filter,
        productRepository: ProductRepository(
          productApi: inject.get<SFCommerceSDK>().productApi,
        ),
      )..add(const FilterByCategoryEvent.started()),
      child: const FilterByView(),
    );
  }
}

class FilterByView extends StatelessWidget {
  const FilterByView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.read<FilterByCategoryBloc>().state.category,
        ),
      ),
      body: _StateSwitcher(),
    );
  }
}

class _StateSwitcher extends StatelessWidget {
  const _StateSwitcher();

  @override
  Widget build(BuildContext context) {
    final status = context.select(
      (FilterByCategoryBloc bloc) => bloc.state.status,
    );

    return switch (status) {
      FilterByCategoryStatus.loading => const Center(
          child: CircularProgressIndicator(),
        ),
      FilterByCategoryStatus.loaded => const _LoadedView(),
      FilterByCategoryStatus.error => const Center(
          child: Text('Error'),
        ),
    };
  }
}

class _LoadedView extends StatelessWidget {
  const _LoadedView();

  @override
  Widget build(BuildContext context) {
    final products = context.select(
      (FilterByCategoryBloc bloc) => bloc.state.products,
    );

    if (products.isEmpty) {
      return const Center(
        child: Text('No products found'),
      );
    }

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 0.7,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) => _buildItem(context, products[index]),
    );
  }

  Widget _buildItem(BuildContext context, ProductPreviewByCategory product) {
    return CustomProductCard(
      product: product,
    );
  }
}
