class ProductByCategory {
  ProductByCategory({
    required this.productId,
    required this.productName,
    required this.image,
    required this.price,
    required this.currency,
  });

  factory ProductByCategory.fromJson(Map<String, dynamic> json) =>
      ProductByCategory(
        currency: json['currency'] as String,
        image: (json['image'] as Map)['link'] as String,
        price: (json['price'] as num).toDouble(),
        productId: json['productId'] as String,
        productName: json['productName'] as String,
      );

  final String productId;
  final String productName;
  final String image;
  final double price;
  final String currency;
}
