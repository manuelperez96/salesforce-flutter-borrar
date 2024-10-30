import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:example/domain/repository/category_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sf_commerce_sdk/sf_commerce_sdk.dart';

part 'category_event.dart';
part 'category_state.dart';
part 'category_bloc.freezed.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc({
    required CategoryRepository categoryRepository,
  })  : _categoryRepository = categoryRepository,
        super(const _Initial()) {
    on<_Started>(_onStarted);
  }

  final CategoryRepository _categoryRepository;

  Future<void> _onStarted(
    _Started event,
    Emitter<CategoryState> emit,
  ) async {
    try {
      final categories = await _categoryRepository.getAllCategories();
      final noEmptyCategories = categories
          .where(
            (element) =>
                element.subcategories != null &&
                element.subcategories!.isNotEmpty,
          )
          .toList();
      emit(
        state.copyWith(
          categories: noEmptyCategories,
          status: CategoryStatus.loaded,
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: CategoryStatus.error));
    }
  }
}
