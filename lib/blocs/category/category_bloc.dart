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
  List<CategoryModel> _categories = [];

  Future<void> _onInit(
    CategoryInitialEvent event,
    Emitter<CategoryState> emit,
  ) async {
    emit(const CategoryState.loading());
    try {
      _categories = await _categoryRepository.getCategories();
      emit(CategoryState.loaded(_categories));
    } catch (e) {
      emit(CategoryState.error('Failed to load categories: $e'));
    }
  }

  Future<void> _onSave(
    CategorySaveEvent event,
    Emitter<CategoryState> emit,
  ) async {
    emit(const CategoryState.loading());
    try {
      await _categoryRepository.saveCategory(event.category);
      _categories = await _categoryRepository.getCategories();
      emit(CategoryState.loaded(_categories));
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
      await _categoryRepository.deleteCategory(event.category);
      _categories = await _categoryRepository.getCategories();
      emit(CategoryState.loaded(_categories));
    } catch (e) {
      emit(CategoryState.error('Failed to delete category: $e'));
    }
  }
}
