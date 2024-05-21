import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_app/blocs/blocs.dart';
import 'package:stock_app/data/data.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc({
    required CategoryRepository categoryRepository,
  })  : _categoryRepository = categoryRepository,
        super(const CategoryState.initial()) {
    on<CategoryInitialEvent>(_onInit);
    on<CategorySaveEvent>(_onSave);
    on<CategoryDeleteEvent>(_onDelete);
    add(const CategoryEvent.init());
  }

  final CategoryRepository _categoryRepository;
  List<Category> _categories = [];

  Future<void> _onInit(
    CategoryInitialEvent event,
    Emitter<CategoryState> emit,
  ) async {
    await _loadCategories(emit);
  }

  Future<void> _onSave(
    CategorySaveEvent event,
    Emitter<CategoryState> emit,
  ) async {
    emit(const CategoryState.loading());
    try {
      await _categoryRepository.save(category: event.category);
      await _loadCategories(emit);
    } catch (e) {
      emit(CategoryState.error('Failed to save category: $e'));
    }
  }

  Future<void> _onDelete(
    CategoryDeleteEvent event,
    Emitter<CategoryState> emit,
  ) async {
    emit(const CategoryState.loading());
    try {
      await _categoryRepository.delete(category: event.category);
      await _loadCategories(emit);
    } catch (e) {
      emit(CategoryState.error('Failed to delete category: $e'));
    }
  }

  Future<void> _loadCategories(Emitter<CategoryState> emit) async {
    emit(const CategoryState.loading());
    try {
      _categories = await _categoryRepository.getAll();
      emit(CategoryState.loaded(_categories));
    } catch (e) {
      emit(CategoryState.error('Failed to load categories: $e'));
    }
  }
}
