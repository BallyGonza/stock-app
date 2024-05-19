import 'package:hive_flutter/hive_flutter.dart';
import 'package:stock_app/data/data.dart';

class CategoryRepository {
  CategoryRepository({required this.categoryBox});

  final Box<Category> categoryBox;

  Future<List<Category>> getAll() async {
    if (categoryBox.isEmpty) {
      final defaultCategories = _getDefault();
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

  Future<void> save({required Category category}) async {
    await categoryBox.put(category.id, category);
  }

  Future<void> delete({required Category category}) async {
    await categoryBox.delete(category.id);
  }

  List<Category> _getDefault() {
    return [
      Category(
        id: 1,
        name: 'Lacteos',
        icon: AppImages.dairyCategory,
        products: [],
      ),
      Category(
        id: 2,
        name: 'Carnes',
        icon: AppImages.meatCategory,
        products: [],
      ),
      Category(
        id: 3,
        name: 'Baño',
        icon: AppImages.bathCategory,
        products: [],
      ),
      Category(
        id: 4,
        name: 'Frutas y Verduras',
        icon: AppImages.fruitCategory,
        products: [],
      ),
      Category(
        id: 5,
        name: 'Lavadero',
        icon: AppImages.laundryCategory,
        products: [],
      ),
      Category(
        id: 6,
        name: 'Harinas',
        icon: AppImages.flourCategory,
        products: [],
      ),
      Category(
        id: 7,
        name: 'Bebidas',
        icon: AppImages.drinkCategory,
        products: [],
      ),
      Category(
        id: 8,
        name: 'Limpieza',
        icon: AppImages.cleaningCategory,
        products: [],
      ),
      Category(
        id: 9,
        name: 'Desayuno y Merienda',
        icon: AppImages.cookieCategory,
        products: [],
      ),
      Category(
        id: 10,
        name: 'Pastas',
        icon: AppImages.pastaCategory,
        products: [],
      ),
      Category(
        id: 11,
        name: 'Snacks y Golosinas',
        icon: AppImages.sweetCategory,
        products: [],
      ),
      Category(
        id: 12,
        name: 'Cocina',
        icon: AppImages.kitchenCategory,
        products: [],
      ),
    ];
  }
}
