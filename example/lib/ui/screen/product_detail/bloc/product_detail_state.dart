part of 'product_detail_bloc.dart';

enum ProductDetailStatus { loading, loaded, error }

@freezed
class ProductDetailState with _$ProductDetailState {
  const factory ProductDetailState.initial({
    required String initialProductId,
    @Default(ProductDetailStatus.loading) ProductDetailStatus status,
    Product? initialProduct,
    int? productQuantity,
    String? selectedColor,
    String? selectedSize,
    String? selectedProductId,
  }) = _Initial;
}
