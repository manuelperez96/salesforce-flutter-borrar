part of 'bookmark_bloc.dart';

abstract class BookmarkEvent {}

class AddProductEvent extends BookmarkEvent {
  final ProductModel product;

  AddProductEvent(this.product);
}

class RemoveProductEvent extends BookmarkEvent {
  final ProductModel product;

  RemoveProductEvent(this.product);
}
