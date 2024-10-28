import 'package:example/constants.dart';
import 'package:example/di/app_modules.dart';
import 'package:example/domain/repository/category_repository.dart';
import 'package:example/l10n/l10n.dart';
import 'package:example/ui/screen/category/bloc/category_bloc.dart';
import 'package:example/ui/screen/discover/views/components/expansion_category.dart';
import 'package:example/ui/screen/search/views/components/search_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sf_commerce_sdk/sf_commerce_sdk.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CategoryBloc(
        categoryRepository: CategoryRepository(
          categoryApi: inject.get<SFCommerceSDK>().categoryApi,
        ),
      )..add(const CategoryEvent.started()),
      child: const CategoryView(),
    );
  }
}

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(defaultPadding),
              child: SearchForm(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding,
                vertical: defaultPadding / 2,
              ),
              child: Text(
                context.l10n.categories,
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            const Expanded(child: _Body()),
          ],
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final status = context.select((CategoryBloc bloc) => bloc.state.status);

    return switch (status) {
      CategoryStatus.loading => const Align(
          child: CircularProgressIndicator(),
        ),
      CategoryStatus.loaded => const _LoadedView(),
      CategoryStatus.error => const Align(
          child: Text('Error'),
        ),
    };
  }
}

class _LoadedView extends StatelessWidget {
  const _LoadedView();

  @override
  Widget build(BuildContext context) {
    final categories = context.select(
      (CategoryBloc bloc) => bloc.state.categories,
    );

    return ListView.builder(
      itemCount: categories.length,
      itemBuilder: (context, index) {
        final category = categories[index];

        return ExpansionCategory(
          title: category.name,
          subCategory: category.subcategories ?? [],
          svgSrc: 'assets/icons/Sale.svg',
        );

        return Text(category.name);
      },
    );
  }
}
