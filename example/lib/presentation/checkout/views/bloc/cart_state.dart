import 'package:example/models/product_model.dart';

abstract class CartState {}

class CartInitial extends CartState {}

class CartLoading extends CartState {}

class CartLoaded extends CartState {
  final List<ProductModel> products;
  CartLoaded(this.products);
}
