import 'package:example/components/product/product_card.dart';
import 'package:example/presentation/bookmark/bloc/bookmark_bloc.dart';
import 'package:example/route/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants.dart';

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          BlocBuilder<BookmarkBloc, BookmarkState>(
            builder: (context, state) {
              if (state is BookmarkInitialState) {
                return const SliverToBoxAdapter(
                  child: Center(
                    child: Text("Bookmark is empty"),
                  ),
                );
              }
              if (state is BookmarkLoadedState) {
                if (state.products.isEmpty) {
                  return const SliverToBoxAdapter(
                    child: Center(
                      child: Text("Bookmark is empty"),
                    ),
                  );
                }
                return SliverPadding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: defaultPadding, vertical: defaultPadding),
                  sliver: SliverGrid(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200.0,
                      mainAxisSpacing: defaultPadding,
                      crossAxisSpacing: defaultPadding,
                      childAspectRatio: 0.66,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return ProductCard(
                          showBookmark: true,
                          product: state.products[index],
                          press: () {
                            Navigator.pushNamed(
                                context, productDetailsScreenRoute);
                          },
                        );
                      },
                      childCount: state.products.length,
                    ),
                  ),
                );
              }
              return const SliverToBoxAdapter(
                child: Center(child: CircularProgressIndicator()),
              );
            },
          ),
        ],
      ),
    );
  }
}
