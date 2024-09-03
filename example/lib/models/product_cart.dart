import 'package:sf_commerce_sdk/models/responses/product/product.dart';

class ProductCart {
  ProductCart({required this.product, this.quantity = 1});
  int quantity;
  final Product product;

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
    final result = quantity * product.pricePerUnit;
    return '${result.toStringAsFixed(2)} ${product.currency}';
  }
}
