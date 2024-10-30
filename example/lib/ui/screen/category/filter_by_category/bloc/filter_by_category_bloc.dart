import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:example/domain/repository/product_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sf_commerce_sdk/sf_commerce_sdk.dart';

part 'filter_by_category_event.dart';
part 'filter_by_category_state.dart';
part 'filter_by_category_bloc.freezed.dart';

class FilterByCategoryBloc
    extends Bloc<FilterByCategoryEvent, FilterByCategoryState> {
  FilterByCategoryBloc({
    required ProductRepository productRepository,
    required String category,
  })  : _productRepository = productRepository,
        super(_Initial(category: category)) {
    on<_Started>(_onStarted);
  }

  final ProductRepository _productRepository;

  Future<void> _onStarted(
    _Started event,
    Emitter<FilterByCategoryState> emit,
  ) async {
    try {
      final products =
          await _productRepository.getProductByCategory(state.category);
      emit(
        state.copyWith(
          status: FilterByCategoryStatus.loaded,
          products: products,
        ),
      );
    } catch (_) {
      emit(
        state.copyWith(status: FilterByCategoryStatus.error),
      );
    }
  }
}
