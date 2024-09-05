import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_cart_entity.freezed.dart';

@freezed
class ProductCartEntity with _$ProductCartEntity {
  factory ProductCartEntity({
    required String name,
    required String productId,
    required String itemId,
    required String image,
    required double pricePerUnit,
    required int quantity,
    required String currency,
  }) = _ProductCartEntity;

  const ProductCartEntity._();

  String getTotalPrice() {
    final result = quantity * pricePerUnit;
    return '${result.toStringAsFixed(2)} $currency';
  }
}
