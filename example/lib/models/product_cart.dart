import 'package:sf_commerce_sdk/models/responses/product/product.dart';

class ProductCart {
  int quantity;
  final Product product;

  ProductCart({required this.product, this.quantity = 1});

  void addQuantity(int amount) {
    quantity += amount;
  }

  void increaseQuantity() {
    quantity++;
  }

  void decreaseQuantity() {
    quantity--;
  }

  String getTotalPrice() {
    double result = quantity * product.pricePerUnit;
    return '${result.toStringAsFixed(2)} ${product.currency}';
  }
}
