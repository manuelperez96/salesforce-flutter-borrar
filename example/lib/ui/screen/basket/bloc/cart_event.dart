import 'package:example/domain/model/product_cart_entity.dart';
import 'package:sf_commerce_sdk/sf_commerce_sdk.dart';

abstract class CartEvent {}

class CheckStatusCart extends CartEvent {}

class AddBillingAddress extends CartEvent {
  AddBillingAddress({required this.ingAddress, required this.phoneNumber});

  final IngAddress ingAddress;
  final String phoneNumber;
}

class AddBillingAndShipping extends CartEvent {
  AddBillingAndShipping({required this.ingAddress, required this.phoneNumber});

  final IngAddress ingAddress;
  final String phoneNumber;
}

class AddPaymentMethod extends CartEvent {}

class CreateNewBasket extends CartEvent {}

class CreateOrder extends CartEvent {}

class AddShipment extends CartEvent {}

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
