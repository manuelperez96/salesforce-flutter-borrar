// For demo only
import 'package:example/constants.dart';

class ProductModel {
  final int id;
  final String image, brandName, title;
  final double price;
  final double? priceAfetDiscount;
  final int? dicountpercent;
  final bool isProductAvailable;

  ProductModel({
    required this.id,
    required this.image,
    required this.brandName,
    required this.title,
    required this.price,
    this.priceAfetDiscount,
    this.dicountpercent,
    required this.isProductAvailable,
  });
}

List<ProductModel> demoPopularProducts = [
  ProductModel(
    id: 1,
    image: productDemoImg1,
    title: "Mountain Warehouse for Women",
    brandName: "Lipsy london",
    price: 540,
    priceAfetDiscount: 420,
    dicountpercent: 20,
    isProductAvailable: true,
  ),
  ProductModel(
    id: 2,
    image: productDemoImg4,
    title: "Mountain Beta Warehouse",
    brandName: "Lipsy london",
    price: 800,
    isProductAvailable: false,
  ),
  ProductModel(
    id: 3,
    image: productDemoImg5,
    title: "FS - Nike Air Max 270 Really React",
    brandName: "Lipsy london",
    price: 650.62,
    priceAfetDiscount: 390.36,
    dicountpercent: 40,
    isProductAvailable: false,
  ),
  ProductModel(
    id: 4,
    image: productDemoImg6,
    title: "Green Poplin Ruched Front",
    brandName: "Lipsy london",
    price: 1264,
    priceAfetDiscount: 1200.8,
    dicountpercent: 5,
    isProductAvailable: true,
  ),
  ProductModel(
      id: 5,
      image: "https://i.imgur.com/tXyOMMG.png",
      title: "Green Poplin Ruched Front",
      brandName: "Lipsy london",
      price: 650.62,
      priceAfetDiscount: 390.36,
      dicountpercent: 40,
      isProductAvailable: false),
  ProductModel(
    id: 6,
    image: "https://i.imgur.com/h2LqppX.png",
    title: "white satin corset top",
    brandName: "Lipsy london",
    price: 1264,
    priceAfetDiscount: 1200.8,
    dicountpercent: 5,
    isProductAvailable: true,
  ),
];
List<ProductModel> demoFlashSaleProducts = [
  ProductModel(
    id: 7,
    image: productDemoImg5,
    title: "FS - Nike Air Max 270 Really React",
    brandName: "Lipsy london",
    price: 650.62,
    priceAfetDiscount: 390.36,
    dicountpercent: 40,
    isProductAvailable: true,
  ),
  ProductModel(
    id: 8,
    image: productDemoImg6,
    title: "Green Poplin Ruched Front",
    brandName: "Lipsy london",
    price: 1264,
    priceAfetDiscount: 1200.8,
    dicountpercent: 5,
    isProductAvailable: false,
  ),
  ProductModel(
    id: 9,
    image: productDemoImg4,
    title: "Mountain Beta Warehouse",
    brandName: "Lipsy london",
    price: 800,
    priceAfetDiscount: 680,
    dicountpercent: 15,
    isProductAvailable: false,
  ),
];
List<ProductModel> demoBestSellersProducts = [
  ProductModel(
    id: 10,
    image: "https://i.imgur.com/tXyOMMG.png",
    title: "Green Poplin Ruched Front",
    brandName: "Lipsy london",
    price: 650.62,
    priceAfetDiscount: 390.36,
    dicountpercent: 40,
    isProductAvailable: true,
  ),
  ProductModel(
      id: 11,
      image: "https://i.imgur.com/h2LqppX.png",
      title: "white satin corset top",
      brandName: "Lipsy london",
      price: 1264,
      priceAfetDiscount: 1200.8,
      dicountpercent: 5,
      isProductAvailable: false),
  ProductModel(
    id: 12,
    image: productDemoImg4,
    title: "Mountain Beta Warehouse",
    brandName: "Lipsy london",
    price: 800,
    priceAfetDiscount: 680,
    dicountpercent: 15,
    isProductAvailable: true,
  ),
];
List<ProductModel> kidsProducts = [
  ProductModel(
      id: 13,
      image: "https://i.imgur.com/dbbT6PA.png",
      title: "Green Poplin Ruched Front",
      brandName: "Lipsy london",
      price: 650.62,
      priceAfetDiscount: 590.36,
      dicountpercent: 24,
      isProductAvailable: false),
  ProductModel(
    id: 14,
    image: "https://i.imgur.com/7fSxC7k.png",
    title: "Printed Sleeveless Tiered Swing Dress",
    brandName: "Lipsy london",
    price: 650.62,
    isProductAvailable: true,
  ),
  ProductModel(
      id: 15,
      image: "https://i.imgur.com/pXnYE9Q.png",
      title: "Ruffle-Sleeve Ponte-Knit Sheath ",
      brandName: "Lipsy london",
      price: 400,
      isProductAvailable: false),
  ProductModel(
    id: 16,
    image: "https://i.imgur.com/V1MXgfa.png",
    title: "Green Mountain Beta Warehouse",
    brandName: "Lipsy london",
    price: 400,
    priceAfetDiscount: 360,
    dicountpercent: 20,
    isProductAvailable: true,
  ),
  ProductModel(
      id: 17,
      image: "https://i.imgur.com/8gvE5Ss.png",
      title: "Printed Sleeveless Tiered Swing Dress",
      brandName: "Lipsy london",
      price: 654,
      isProductAvailable: false),
  ProductModel(
    id: 18,
    image: "https://i.imgur.com/cBvB5YB.png",
    title: "Mountain Beta Warehouse",
    brandName: "Lipsy london",
    price: 250,
    isProductAvailable: true,
  ),
];
