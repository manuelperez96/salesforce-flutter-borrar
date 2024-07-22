import 'package:example/models/product_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'bookmark_event.dart';
part 'bookmark_state.dart';

class BookmarkBloc extends Bloc<BookmarkEvent, BookmarkState> {
  BookmarkBloc() : super(BookmarkInitialState()) {
    on<AddProductEvent>((event, emit) {
      final currentState = state;
      if (currentState is BookmarkLoadedState) {
        final List<ProductModel> updatedList = List.from(currentState.products)
          ..add(event.product);
        emit(BookmarkLoadedState(updatedList));
      } else {
        emit(BookmarkLoadedState([event.product]));
      }
    });

    on<RemoveProductEvent>((event, emit) {
      final currentState = state;
      if (currentState is BookmarkLoadedState) {
        final List<ProductModel> updatedList = currentState.products
            .where((product) => product.id != event.product.id)
            .toList();
        emit(BookmarkLoadedState(updatedList));
      }
    });
  }
}
