class ProductByCategory {
  final String productId;
  final String productName;
  final String image;
  final double price;
  final String currency;

  ProductByCategory({
    required this.productId,
    required this.productName,
    required this.image,
    required this.price,
    required this.currency,
  });

  factory ProductByCategory.fromJson(Map<String, dynamic> json) =>
      ProductByCategory(
        currency: json['currency'],
        image: json['image']['link'],
        price: json['price'],
        productId: json['productId'],
        productName: json['productName'],
      );
}
