import 'package:example/models/product_cart.dart';
import 'package:sf_commerce_sdk/models/responses/basket/basket.dart';

abstract class CartState {}

class CartInitial extends CartState {}

class CartLoading extends CartState {}

class CartLoaded extends CartState {
  CartLoaded(this.products, this.currentCart);
  final Basket currentCart;
  final List<ProductCart> products;
}
