import 'package:example/models/product_model.dart';
import 'package:example/presentation/bookmark/bloc/bookmark_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookmarkIconButton extends StatelessWidget {
  final ProductModel product;

  const BookmarkIconButton({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookmarkBloc, BookmarkState>(
      builder: (context, state) {
        if (state is BookmarkLoadedState) {
          if (state.products.contains(product)) {
            return IconButton(
              onPressed: () => showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Eliminar producto'),
                    content: const Text(
                        '¿Seguro que quieres eliminar este producto?'),
                    actions: <Widget>[
                      TextButton(
                        child: const Text('Cancelar'),
                        onPressed: () {
                          Navigator.of(context).pop(); // Cierra el diálogo
                        },
                      ),
                      TextButton(
                        child: const Text('Eliminar'),
                        onPressed: () {
                          // Elimina el producto y cierra el diálogo
                          BlocProvider.of<BookmarkBloc>(context)
                              .add(RemoveProductEvent(product));
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              ),
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
