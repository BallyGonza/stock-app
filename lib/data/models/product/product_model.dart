import 'package:hive/hive.dart';

part 'product_model.g.dart';

@HiveType(typeId: 2)
class ProductModel extends HiveObject {
  ProductModel({
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
}
