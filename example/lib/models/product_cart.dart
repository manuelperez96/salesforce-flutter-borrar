import 'package:sf_commerce_sdk/models/responses/product/product.dart';

class ProductCart {
  int quantity;
  final Product product;

  ProductCart({required this.product, this.quantity = 1});

  void addQuantity(int amount) {
    this.quantity += amount;
  }

  void increaseQuantity() {
    this.quantity++;
  }

  void decreaseQuantity() {
    this.quantity--;
  }

  String getTotalPrice() {
    double result = quantity * product.pricePerUnit;
    return result.toStringAsFixed(2) + ' ' + product.currency;
  }
}
