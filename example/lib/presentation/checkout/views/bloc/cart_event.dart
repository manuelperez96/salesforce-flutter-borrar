import 'package:example/models/product_model.dart';

abstract class CartEvent {}

class AddProductCart extends CartEvent {
  final ProductModel product;

  AddProductCart(this.product);
}

class RemoveProductCart extends CartEvent {
  final ProductModel product;

  RemoveProductCart(this.product);
}
