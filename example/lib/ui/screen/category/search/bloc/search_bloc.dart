import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:example/domain/repository/product_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sf_commerce_sdk/sf_commerce_sdk.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc({
    required String criteria,
    required ProductRepository productRepository,
  })  : _productRepository = productRepository,
        super(_Initial(criteria: criteria)) {
    on<_Started>(_onStarted);
  }

  final ProductRepository _productRepository;

  Future<void> _onStarted(_Started event, Emitter<SearchState> emit) async {
    try {
      final products = await _productRepository.getProductByCriteria(
        state.criteria,
      );
      emit(
        state.copyWith(
          status: SearchStatus.loaded,
          products: products,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(status: SearchStatus.error),
      );
    }
  }
}
