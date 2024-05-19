import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stock_app/data/data.dart';

part 'product_state.freezed.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState.initial() = ProductInitialState;
  const factory ProductState.loading() = ProductLoadingState;
  const factory ProductState.loaded(List<Product> categories) =
      ProductLoadedState;
  const factory ProductState.error(String message) = ProductErrorState;
}
