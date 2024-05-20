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
        id: '1',
        name: 'Lacteos',
        icon: AppImages.dairyCategory,
      ),
      Category(
        id: '2',
        name: 'Carnes',
        icon: AppImages.meatCategory,
      ),
      Category(
        id: '3',
        name: 'Baño',
        icon: AppImages.bathCategory,
      ),
      Category(
        id: '4',
        name: 'Frutas y Verduras',
        icon: AppImages.fruitCategory,
      ),
      Category(
        id: '5',
        name: 'Lavadero',
        icon: AppImages.laundryCategory,
      ),
      Category(
        id: '6',
        name: 'Harinas',
        icon: AppImages.flourCategory,
      ),
      Category(
        id: '7',
        name: 'Bebidas',
        icon: AppImages.drinkCategory,
      ),
      Category(
        id: '8',
        name: 'Limpieza',
        icon: AppImages.cleaningCategory,
      ),
      Category(
        id: '9',
        name: 'Desayuno y Merienda',
        icon: AppImages.cookieCategory,
      ),
      Category(
        id: '10',
        name: 'Pastas',
        icon: AppImages.pastaCategory,
      ),
      Category(
        id: '11',
        name: 'Snacks y Golosinas',
        icon: AppImages.sweetCategory,
      ),
      Category(
        id: '12',
        name: 'Cocina',
        icon: AppImages.kitchenCategory,
      ),
    ];
  }
}
