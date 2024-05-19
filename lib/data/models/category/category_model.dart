import 'package:hive/hive.dart';
import 'package:stock_app/data/data.dart';

part 'category_model.g.dart';

@HiveType(typeId: 1)
class CategoryModel extends HiveObject {
  CategoryModel({
    required this.id,
    required this.name,
    required this.icon,
    required this.products,
  });

  @HiveField(0)
  int id;
  @HiveField(1)
  String name;
  @HiveField(2)
  String icon;
  @HiveField(3)
  List<ProductModel> products;

  CategoryModel copyWith({
    int? id,
    String? name,
    String? icon,
    List<ProductModel>? products,
  }) {
    return CategoryModel(
      id: id ?? this.id,
      name: name ?? this.name,
      icon: icon ?? this.icon,
      products: products ?? this.products,
    );
  }
}
