import 'package:hive/hive.dart';

part 'product.g.dart';

@HiveType(typeId: 1)
class Product extends HiveObject {
  Product({
    required this.id,
    required this.name,
    required this.category,
    required this.price,
    required this.quantity,
    this.expiryDate,
  });

  @HiveField(0)
  int id;
  @HiveField(1)
  String name;
  @HiveField(2)
  String category;
  @HiveField(3)
  double price;
  @HiveField(4)
  DateTime? expiryDate;
  @HiveField(5)
  int quantity;

  Product copyWith({
    int? id,
    String? name,
    String? category,
    double? price,
    DateTime? expiryDate,
    int? quantity,
  }) {
    return Product(
      id: id ?? this.id,
      name: name ?? this.name,
      category: category ?? this.category,
      price: price ?? this.price,
      expiryDate: expiryDate ?? this.expiryDate,
      quantity: quantity ?? this.quantity,
    );
  }
}
