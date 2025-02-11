import 'package:example/domain/model/basket_entity.dart';

abstract class CartState {}

class CartLoading extends CartState {}

class CartLoaded extends CartState {
  CartLoaded(this.currentCart);
  final BasketEntity currentCart;
}

class CartSuccessOrder extends CartState {}
