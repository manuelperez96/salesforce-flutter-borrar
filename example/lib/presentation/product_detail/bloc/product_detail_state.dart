part of 'product_detail_bloc.dart';

enum ProductDetailStatus { loading, loaded, error }

@freezed
class ProductDetailState with _$ProductDetailState {
  const factory ProductDetailState.initial({
    required String productId,
    @Default(ProductDetailStatus.loading) ProductDetailStatus status,
    Product? product,
    int? productQuantity,
  }) = _Initial;
}
