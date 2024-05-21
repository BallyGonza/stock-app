import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_app/blocs/blocs.dart';
import 'package:stock_app/data/data.dart';

class PurchaseBloc extends Bloc<PurchaseEvent, PurchaseState> {
  PurchaseBloc({
    required PurchaseRepository purchaseRepository,
  })  : _purchaseRepository = purchaseRepository,
        super(const PurchaseState.initial()) {
    on<PurchaseInitialEvent>(_onInit);
    on<PurchaseSaveEvent>(_onSave);
    on<PurchaseDeleteEvent>(_onDelete);
    add(const PurchaseEvent.init());
  }

  final PurchaseRepository _purchaseRepository;
  List<PurchaseModel> _purchases = [];

  Future<void> _onInit(
    PurchaseInitialEvent event,
    Emitter<PurchaseState> emit,
  ) async {
    emit(const PurchaseState.loading());
    try {
      _purchases = await _purchaseRepository.getPurchases();
      emit(PurchaseState.loaded(_purchases));
    } catch (e) {
      emit(PurchaseState.error('Failed to load purchasets: $e'));
    }
  }

  Future<void> _onSave(
    PurchaseSaveEvent event,
    Emitter<PurchaseState> emit,
  ) async {
    emit(const PurchaseState.loading());
    try {
      await _purchaseRepository.savePurchase(event.purchase);
      _purchases = await _purchaseRepository.getPurchases();
      emit(PurchaseState.loaded(_purchases));
    } catch (e) {
      emit(PurchaseState.error('Failed to save purchase: $e'));
    }
  }

  Future<void> _onDelete(
    PurchaseDeleteEvent event,
    Emitter<PurchaseState> emit,
  ) async {
    emit(const PurchaseState.loading());
    try {
      await _purchaseRepository.deletePurchase(event.purchase);
      _purchases = await _purchaseRepository.getPurchases();
      emit(PurchaseState.loaded(_purchases));
    } catch (e) {
      emit(PurchaseState.error('Failed to delete purchase: $e'));
    }
  }
}
