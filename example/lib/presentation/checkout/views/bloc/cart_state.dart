import 'package:sf_commerce_sdk/models/responses/product/product.dart';

abstract class CartState {}

class CartInitial extends CartState {}

class CartLoading extends CartState {}

class CartLoaded extends CartState {
  final List<Product> products;
  CartLoaded(this.products);
}
