import 'package:example/domain/model/product_cart_entity.dart';

abstract class CartEvent {}

class CheckStatusCart extends CartEvent {}

class IncrementQuantityProductCart extends CartEvent {
  IncrementQuantityProductCart({required this.product});

  final ProductCartEntity product;
}

class DecrementQuantityProductCart extends CartEvent {
  DecrementQuantityProductCart({required this.product});

  final ProductCartEntity product;
}

class AddProductCart extends CartEvent {
  AddProductCart(this.productId, this.quantity);

  final String productId;
  final int quantity;
}

class RemoveProductCart extends CartEvent {
  RemoveProductCart(this.product);

  final ProductCartEntity product;
}
