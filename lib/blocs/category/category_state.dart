import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stock_app/data/data.dart';

part 'category_state.freezed.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState.initial() = CategoryInitialState;
  const factory CategoryState.loading() = CategoryLoadingState;
  const factory CategoryState.loaded(List<Category> categories) =
      CategoryLoadedState;
  const factory CategoryState.error(String message) = CategoryErrorState;
}
