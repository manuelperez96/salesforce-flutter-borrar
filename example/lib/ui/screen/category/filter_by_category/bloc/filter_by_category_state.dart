part of 'filter_by_category_bloc.dart';

enum FilterByCategoryStatus { loading, loaded, error }

@freezed
class FilterByCategoryState with _$FilterByCategoryState {
  const factory FilterByCategoryState.initial({
    required String category,
    @Default(FilterByCategoryStatus.loading) FilterByCategoryStatus status,
    @Default([]) List<ProductPreviewByCategory> products,
  }) = _Initial;
}
