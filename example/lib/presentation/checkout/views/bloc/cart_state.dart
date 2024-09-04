import 'package:sf_commerce_sdk/models/basket_entity.dart';

abstract class CartState {}

class CartInitial extends CartState {}

class CartLoading extends CartState {}

class CartLoaded extends CartState {
  CartLoaded(this.currentCart);
  final BasketEntity currentCart;
}
