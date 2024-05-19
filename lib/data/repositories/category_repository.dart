import 'package:hive_flutter/hive_flutter.dart';
import 'package:stock_app/data/data.dart';

class CategoryRepository {
  CategoryRepository({required this.categoryBox});

  final Box<CategoryModel> categoryBox;

  Future<List<CategoryModel>> getCategories() async {
    if (categoryBox.isEmpty) {
      final defaultCategories = _getDefaultCategories();
      if (defaultCategories.isNotEmpty) {
        await categoryBox.putAll({
          for (final category in defaultCategories) category.id: category,
        });
        return categoryBox.values.toList();
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

  List<CategoryModel> _getDefaultCategories() {
    return [
      CategoryModel(
        id: 1,
        name: 'Lacteos',
        icon: AppImages.dairyCategory,
        products: [],
      ),
      CategoryModel(
        id: 2,
        name: 'Carnes',
        icon: AppImages.meatCategory,
        products: [],
      ),
      CategoryModel(
        id: 3,
        name: 'Baño',
        icon: AppImages.bathCategory,
        products: [],
      ),
      CategoryModel(
        id: 4,
        name: 'Frutas y Verduras',
        icon: AppImages.fruitCategory,
        products: [],
      ),
      CategoryModel(
        id: 5,
        name: 'Lavadero',
        icon: AppImages.laundryCategory,
        products: [],
      ),
      CategoryModel(
        id: 6,
        name: 'Harinas',
        icon: AppImages.flourCategory,
        products: [],
      ),
      CategoryModel(
        id: 7,
        name: 'Bebidas',
        icon: AppImages.drinkCategory,
        products: [],
      ),
      CategoryModel(
        id: 8,
        name: 'Limpieza',
        icon: AppImages.cleaningCategory,
        products: [],
      ),
      CategoryModel(
        id: 9,
        name: 'Desayuno y Merienda',
        icon: AppImages.cookieCategory,
        products: [],
      ),
      CategoryModel(
        id: 10,
        name: 'Pastas',
        icon: AppImages.pastaCategory,
        products: [],
      ),
      CategoryModel(
        id: 11,
        name: 'Snacks y Golosinas',
        icon: AppImages.sweetCategory,
        products: [],
      ),
      CategoryModel(
        id: 12,
        name: 'Cocina',
        icon: AppImages.kitchenCategory,
        products: [],
      ),
    ];
  }
}
