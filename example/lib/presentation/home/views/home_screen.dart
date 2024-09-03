import 'package:example/presentation/home/bloc/home_bloc.dart';
import 'package:example/presentation/home/views/components/custom_banner.dart';
import 'package:example/presentation/home/views/components/home_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state.status == HomeStatus.loading) return const HomeShimmer();

        if (state.status == HomeStatus.loaded &&
            state.productByCategory.isNotEmpty) {
          return SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.paddingOf(context).top,
                ),
                ...List.generate(
                  state.productByCategory.length,
                  (index) {
                    final entries = state.productByCategory.entries.toList();
                    return CustomBanner(
                      category: entries[index].key,
                      productList: entries[index].value,
                    );
                  },
                ),
              ],
            ),
          );
        }

        return const Center(child: Text('Failed to load data'));
      },
    );
  }
}
