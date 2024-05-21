import 'package:hive/hive.dart';
import 'package:stock_app/data/data.dart';

part 'product_model.g.dart';

@HiveType(typeId: 1)
class ProductModel extends HiveObject {
  ProductModel({
    required this.id,
    required this.name,
    required this.category,
    required this.price,
    required this.quantity,
    required this.brand,
    this.expiryDate,
  });

  @HiveField(0)
  final String id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final CategoryModel category;

  @HiveField(3)
  final double price;

  @HiveField(4)
  final DateTime? expiryDate;

  @HiveField(5)
  final int quantity;

  @HiveField(6)
  final String brand;

  ProductModel copyWith({
    String? id,
    String? name,
    CategoryModel? category,
    double? price,
    DateTime? expiryDate,
    int? quantity,
    String? brand,
  }) {
    return ProductModel(
      id: id ?? this.id,
      name: name ?? this.name,
      category: category ?? this.category,
      price: price ?? this.price,
      expiryDate: expiryDate ?? this.expiryDate,
      quantity: quantity ?? this.quantity,
      brand: brand ?? this.brand,
    );
  }
}
