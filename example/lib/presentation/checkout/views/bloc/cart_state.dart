import 'package:example/domain/model/basket_entity.dart';

abstract class CartState {}

class CartInitial extends CartState {}

class CartLoading extends CartState {}

class CartLoaded extends CartState {
  CartLoaded(this.currentCart);
  final BasketEntity currentCart;
}
