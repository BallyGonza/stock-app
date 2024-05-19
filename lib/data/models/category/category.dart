import 'package:hive/hive.dart';
import 'package:stock_app/data/data.dart';

part 'category.g.dart';

@HiveType(typeId: 0)
class Category extends HiveObject {
  Category({
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
  List<Product> products;

  Category copyWith({
    int? id,
    String? name,
    String? icon,
    List<Product>? products,
  }) {
    return Category(
      id: id ?? this.id,
      name: name ?? this.name,
      icon: icon ?? this.icon,
      products: products ?? this.products,
    );
  }
}
