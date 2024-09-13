part of 'product_detail_bloc.dart';

@freezed
class ProductDetailEvent with _$ProductDetailEvent {
  const factory ProductDetailEvent.started() = _Started;
  const factory ProductDetailEvent.updateQuantity(int quantity) =
      _UpdateQuantity;
  const factory ProductDetailEvent.updateSelectedColor(String color) =
      _SelectedColor;
  const factory ProductDetailEvent.updateSelectedSize(String size) =
      _SelectedSize;
}
