import 'package:sf_commerce_sdk/models/responses/product/product.dart';

abstract class CartEvent {}

class AddProductCart extends CartEvent {
  final Product product;
  final int quantity;
  AddProductCart(this.product, this.quantity);
}

class RemoveProductCart extends CartEvent {
  final Product product;

  RemoveProductCart(this.product);
}
