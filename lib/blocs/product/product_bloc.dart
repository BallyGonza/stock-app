import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_app/blocs/blocs.dart';
import 'package:stock_app/data/data.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc({
    required ProductRepository productRepository,
  })  : _productRepository = productRepository,
        super(const ProductState.initial()) {
    on<ProductInitialEvent>(_onInit);
    on<ProductSaveEvent>(_onSave);
    on<ProductDeleteEvent>(_onDelete);
    add(const ProductEvent.init());
  }

  final ProductRepository _productRepository;
  List<Product> _products = [];

  Future<void> _onInit(
    ProductInitialEvent event,
    Emitter<ProductState> emit,
  ) async {
    emit(const ProductState.loading());
    try {
      _products = await _productRepository.getAll();
      emit(ProductState.loaded(_products));
    } catch (e) {
      emit(ProductState.error('Failed to load products: $e'));
    }
  }

  Future<void> _onSave(
    ProductSaveEvent event,
    Emitter<ProductState> emit,
  ) async {
    emit(const ProductState.loading());
    try {
      await _productRepository.save(product: event.product);
      _products = await _productRepository.getAll();
      emit(ProductState.loaded(_products));
    } catch (e) {
      emit(ProductState.error('Failed to save product: $e'));
    }
  }

  Future<void> _onDelete(
    ProductDeleteEvent event,
    Emitter<ProductState> emit,
  ) async {
    emit(const ProductState.loading());
    try {
      await _productRepository.delete(product: event.product);
      _products = await _productRepository.getAll();
      emit(ProductState.loaded(_products));
    } catch (e) {
      emit(ProductState.error('Failed to delete product: $e'));
    }
  }
}
