part of 'search_bloc.dart';

enum SearchStatus { loading, loaded, error }

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial({
    required String criteria,
    @Default(SearchStatus.loading) SearchStatus status,
    @Default([]) List<ProductPreviewByCategory> products,
  }) = _Initial;
}
