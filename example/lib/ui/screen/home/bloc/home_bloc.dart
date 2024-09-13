import 'package:bloc/bloc.dart';
import 'package:example/domain/repository/category_repository.dart';
import 'package:example/domain/repository/product_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sf_commerce_sdk/sf_commerce_sdk.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({
    required CategoryRepository categoryRepository,
    required ProductRepository productRepository,
  })  : _categoryRepository = categoryRepository,
        _productRepository = productRepository,
        super(const HomeState.initial()) {
    on<_LoadHomeData>(_onLoadHomeData);
  }

  final CategoryRepository _categoryRepository;
  final ProductRepository _productRepository;

  Future<void> _onLoadHomeData(
    _LoadHomeData event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(status: HomeStatus.loading));

    try {
      final categoryList = await _categoryRepository.getRootCategories();
      final productByCategory = <Category, List<ProductPreviewByCategory>>{};

      for (final category in categoryList) {
        final products = await _productRepository.getProductByCategory(
          category.id,
        );
        productByCategory.putIfAbsent(category, () {
          return products;
        });
      }

      emit(
        state.copyWith(
          status: HomeStatus.loaded,
          productByCategory: productByCategory,
        ),
      );
    } catch (e) {
      addError(e);
      emit(state.copyWith(status: HomeStatus.failed));
    }
  }
}
