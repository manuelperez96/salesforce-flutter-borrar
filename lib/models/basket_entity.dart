class BasketEntity {
  BasketEntity({
    required this.basketId,
    required this.productItems,
  });

  final String basketId;
  final List<ProductByBasket> productItems;
}

class ProductByBasket {
  ProductByBasket({
    required this.name,
    required this.productId,
    required this.itemId,
    required this.image,
    required this.pricePerUnit,
    required this.quantity,
    required this.currency,
  });

  final String name;
  final String productId;
  final String itemId;
  final String image;
  final double pricePerUnit;
  final int quantity;
  final String currency;

  String getTotalPrice() {
    final result = quantity * pricePerUnit;
    return '${result.toStringAsFixed(2)} $currency';
  }
}
