import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_app/blocs/blocs.dart';
import 'package:stock_app/data/data.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc({
    required CategoryRepository categoryRepository,
  })  : _categoryRepository = categoryRepository,
        super(const CategoryState.initial()) {
    on<CategoryInitialEvent>(_onInit);
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
      emit(CategoryState.error(e.toString()));
    }
  }
}
