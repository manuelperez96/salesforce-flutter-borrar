import 'package:sf_commerce_sdk/models/responses/product/product.dart';

abstract class CartEvent {}

class CreateCart extends CartEvent {}

class CheckStatusCart extends CartEvent {}

class ModifyQuantityProductCart extends CartEvent {
  final Product product;
  final bool increase; // true -> increase      false -> decrease

  ModifyQuantityProductCart({required this.product, required this.increase});
}

class AddProductCart extends CartEvent {
  final Product product;
  final int quantity;
  AddProductCart(this.product, this.quantity);
}

class RemoveProductCart extends CartEvent {
  final Product product;

  RemoveProductCart(this.product);
}
