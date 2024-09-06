import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:example/domain/repository/product_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sf_commerce_sdk/models/responses/product/product.dart';

part 'product_detail_bloc.freezed.dart';
part 'product_detail_event.dart';
part 'product_detail_state.dart';

class ProductDetailBloc extends Bloc<ProductDetailEvent, ProductDetailState> {
  ProductDetailBloc({
    required String initialProductId,
    required ProductRepository productRepository,
  })  : _productRepository = productRepository,
        super(_Initial(initialProductId: initialProductId)) {
    on<_Started>(_onProductDetailEvent);
    on<_UpdateQuantity>(_onUpdateQuantity);
    on<_SelectedColor>(_onUpdateSelectedColor);
    on<_SelectedSize>(_onUpdateSelectedSize);
  }

  final ProductRepository _productRepository;

  Future<void> _onProductDetailEvent(
    ProductDetailEvent event,
    Emitter<ProductDetailState> emit,
  ) async {
    try {
      final response =
          await _productRepository.getProduct(state.initialProductId);
      emit(
        state.copyWith(
          initialProduct: response,
          status: ProductDetailStatus.loaded,
          productQuantity: response.minOrderQuantity,
          //selectedColor: response.variationValues?.color,
          //selectedSize: response.variationValues?.size,
          selectedProductId: response.id,
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: ProductDetailStatus.error));
    }
  }

  void _onUpdateQuantity(
    _UpdateQuantity event,
    Emitter<ProductDetailState> emit,
  ) {
    emit(state.copyWith(productQuantity: event.quantity));
  }

  void _onUpdateSelectedColor(
    _SelectedColor event,
    Emitter<ProductDetailState> emit,
  ) {
    // late final String selectedProductId;
    // for (final variant in state.initialProduct!.variants!) {
    //   if (variant.variationValues.color == state.selectedColor &&
    //       variant.variationValues.size == state.selectedSize) {
    //     selectedProductId = variant.productId;
    //   }
    // }

    // emit(
    //   state.copyWith(
    //     selectedColor: event.color,
    //     selectedProductId: selectedProductId,
    //   ),
    // );
  }

  void _onUpdateSelectedSize(
    _SelectedSize event,
    Emitter<ProductDetailState> emit,
  ) {
    // late final String selectedProductId;
    // for (final variant in state.initialProduct!.variants!) {
    //   if (variant.variationValues.color == state.selectedColor &&
    //       variant.variationValues.size == state.selectedSize) {
    //     selectedProductId = variant.productId;
    //   }
    // }

    // emit(
    //   state.copyWith(
    //     selectedSize: event.size,
    //     selectedProductId: selectedProductId,
    //   ),
    // );
  }
}
