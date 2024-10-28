part of 'category_bloc.dart';

enum CategoryStatus { loading, loaded, error }

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState.initial({
    @Default(CategoryStatus.loading) CategoryStatus status,
    @Default(<Category>[]) List<Category> categories,
  }) = _Initial;
}
