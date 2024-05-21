import 'package:hive_flutter/hive_flutter.dart';
import 'package:stock_app/data/data.dart';

class CategoryRepository {
  CategoryRepository({required this.categoryBox});

  final Box<CategoryModel> categoryBox;

  Future<List<CategoryModel>> getAll() async {
    if (categoryBox.isEmpty) {
      final defaultCategories = _getDefault();
      if (defaultCategories.isNotEmpty) {
        await categoryBox.putAll({
          for (final category in defaultCategories) category.id: category,
        });
        return defaultCategories;
      }
      return [];
    }
    return categoryBox.values.toList();
  }

  Future<void> saveCategory(CategoryModel category) async {
    await categoryBox.put(category.id, category);
  }

  Future<void> deleteCategory(CategoryModel category) async {
    await categoryBox.delete(category.id);
  }

  List<CategoryModel> _getDefault() {
    return [
      CategoryModel(
        id: '1',
        name: 'Lacteos',
        icon: AppImages.dairyCategory,
      ),
      CategoryModel(
        id: '2',
        name: 'Carnes',
        icon: AppImages.meatCategory,
      ),
      CategoryModel(
        id: '3',
        name: 'Baño',
        icon: AppImages.bathCategory,
      ),
      CategoryModel(
        id: '4',
        name: 'Frutas y Verduras',
        icon: AppImages.fruitCategory,
      ),
      CategoryModel(
        id: '5',
        name: 'Lavadero',
        icon: AppImages.laundryCategory,
      ),
      CategoryModel(
        id: '6',
        name: 'Harinas',
        icon: AppImages.flourCategory,
      ),
      CategoryModel(
        id: '7',
        name: 'Bebidas',
        icon: AppImages.drinkCategory,
      ),
      CategoryModel(
        id: '8',
        name: 'Limpieza',
        icon: AppImages.cleaningCategory,
      ),
      CategoryModel(
        id: '9',
        name: 'Desayuno y Merienda',
        icon: AppImages.cookieCategory,
      ),
      CategoryModel(
        id: '10',
        name: 'Pastas',
        icon: AppImages.pastaCategory,
      ),
      CategoryModel(
        id: '11',
        name: 'Snacks y Golosinas',
        icon: AppImages.sweetCategory,
      ),
      CategoryModel(
        id: '12',
        name: 'Cocina',
        icon: AppImages.kitchenCategory,
      ),
    ];
  }
}
