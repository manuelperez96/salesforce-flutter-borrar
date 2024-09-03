import 'package:sf_commerce_sdk/models/responses/product/product.dart';

abstract class CartEvent {}

class CreateCart extends CartEvent {}

class CheckStatusCart extends CartEvent {}

class ModifyQuantityProductCart extends CartEvent {
  // true -> increase      false -> decrease

  ModifyQuantityProductCart({required this.product, required this.increase});
  final Product product;
  final bool increase;
}

class AddProductCart extends CartEvent {
  AddProductCart(this.product, this.quantity);
  final Product product;
  final int quantity;
}

class RemoveProductCart extends CartEvent {
  RemoveProductCart(this.product);
  final Product product;
}
