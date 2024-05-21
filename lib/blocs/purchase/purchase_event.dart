import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stock_app/data/data.dart';

part 'purchase_event.freezed.dart';

@freezed
class PurchaseEvent with _$PurchaseEvent {
  const factory PurchaseEvent.init() = PurchaseInitialEvent;
  const factory PurchaseEvent.save({required PurchaseModel purchase}) =
      PurchaseSaveEvent;
  const factory PurchaseEvent.delete({required PurchaseModel purchase}) =
      PurchaseDeleteEvent;
}
