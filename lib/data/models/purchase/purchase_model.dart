import 'package:hive/hive.dart';
import 'package:stock_app/data/data.dart';

part 'purchase_model.g.dart';

@HiveType(typeId: 2)
class PurchaseModel extends HiveObject {
  PurchaseModel({
    required this.id,
    required this.products,
    required this.total,
    required this.date,
    this.market,
  });

  @HiveField(0)
  final String id;

  @HiveField(1)
  final List<ProductModel> products;

  @HiveField(2)
  final DateTime date;

  @HiveField(3)
  final double total;

  @HiveField(4)
  final String? market;

  PurchaseModel copyWith({
    String? id,
    List<ProductModel>? products,
    DateTime? date,
    double? total,
    String? market,
  }) {
    return PurchaseModel(
      id: id ?? this.id,
      products: products ?? this.products,
      date: date ?? this.date,
      total: total ?? this.total,
      market: market ?? this.market,
    );
  }
}
