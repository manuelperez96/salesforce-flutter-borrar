part of 'product_detail_bloc.dart';

@freezed
class ProductDetailEvent with _$ProductDetailEvent {
  const factory ProductDetailEvent.started() = _Started;
  const factory ProductDetailEvent.updateQuantity(int quantity) =
      _UpdateQuantity;
}
