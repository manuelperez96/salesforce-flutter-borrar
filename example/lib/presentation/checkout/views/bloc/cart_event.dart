import 'package:example/models/product_model.dart';

abstract class CartEvent {}

class AddProductCart extends CartEvent {
  final ProductModel product;
  final int quantity;
  AddProductCart(this.product, this.quantity);
}

class RemoveProductCart extends CartEvent {
  final ProductModel product;

  RemoveProductCart(this.product);
}
