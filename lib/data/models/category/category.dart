import 'package:hive/hive.dart';
import 'package:stock_app/data/data.dart';

part 'category.g.dart';

@HiveType(typeId: 0)
class Category extends HiveObject {
  Category({
    required this.id,
    required this.name,
    required this.icon,
  });

  @HiveField(0)
  String id;
  @HiveField(1)
  String name;
  @HiveField(2)
  String icon;

  Category copyWith({
    String? id,
    String? name,
    String? icon,
    List<Product>? products,
  }) {
    return Category(
      id: id ?? this.id,
      name: name ?? this.name,
      icon: icon ?? this.icon,
    );
  }
}
