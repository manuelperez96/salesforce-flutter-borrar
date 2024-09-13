part of 'home_bloc.dart';

enum HomeStatus { loading, loaded, failed }

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial({
    @Default(<Category, List<ProductPreviewByCategory>>{})
    Map<Category, List<ProductPreviewByCategory>> productByCategory,
    @Default(HomeStatus.loading) HomeStatus status,
  }) = _Initial;
}
