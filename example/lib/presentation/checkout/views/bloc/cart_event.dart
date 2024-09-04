import 'package:sf_commerce_sdk/models/basket_entity.dart';

abstract class CartEvent {}

class CreateCart extends CartEvent {}

class CheckStatusCart extends CartEvent {}

class IncrementQuantityProductCart extends CartEvent {
  IncrementQuantityProductCart({required this.product});

  final ProductByBasket product;
}

class DecrementQuantityProductCart extends CartEvent {
  DecrementQuantityProductCart({required this.product});

  final ProductByBasket product;
}

class AddProductCart extends CartEvent {
  AddProductCart(this.productId, this.quantity);

  final String productId;
  final int quantity;
}

class RemoveProductCart extends CartEvent {
  RemoveProductCart(this.product);

  final ProductByBasket product;
}
