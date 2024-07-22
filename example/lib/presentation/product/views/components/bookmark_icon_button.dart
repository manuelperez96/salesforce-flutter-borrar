import 'package:example/models/product_model.dart';
import 'package:example/presentation/bookmark/bloc/bookmark_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class BookmarkIconButton extends StatelessWidget {
  const BookmarkIconButton({
    super.key,
    required this.product,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookmarkBloc, BookmarkState>(
      builder: (context, state) {
        if (state is BookmarkLoadedState) {
          if (state.products.contains(product)) {
            return IconButton(
              onPressed: () => BlocProvider.of<BookmarkBloc>(context)
                  .add(RemoveProductEvent(product)),
              icon: SvgPicture.asset("assets/icons/Bookmark.svg",
                  colorFilter: const ColorFilter.mode(
                    Colors.redAccent,
                    BlendMode.srcIn,
                  )),
            );
          }
        }

        return IconButton(
          onPressed: () => BlocProvider.of<BookmarkBloc>(context)
              .add(AddProductEvent(product)),
          icon: SvgPicture.asset(
            "assets/icons/Bookmark.svg",
            colorFilter: ColorFilter.mode(
              Theme.of(context).iconTheme.color!,
              BlendMode.srcIn,
            ),
          ),
        );
      },
    );
  }
}
