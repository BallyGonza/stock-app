import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stock_app/data/data.dart';

part 'purchase_state.freezed.dart';

@freezed
class PurchaseState with _$PurchaseState {
  const factory PurchaseState.initial() = PurchaseInitialState;
  const factory PurchaseState.loading() = PurchaseLoadingState;
  const factory PurchaseState.loaded(List<PurchaseModel> purchases) =
      PurchaseLoadedState;
  const factory PurchaseState.error(String message) = PurchaseErrorState;
}
