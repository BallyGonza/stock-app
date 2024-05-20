import 'package:hive/hive.dart';
import 'package:stock_app/data/data.dart';

part 'purchase.g.dart';

@HiveType(typeId: 2)
class Purchase extends HiveObject {
  Purchase({
    required this.id,
    required this.products,
    required this.total,
    required this.date,
    this.market,
  });

  @HiveField(0)
  String id;
  @HiveField(1)
  List<Product> products;
  @HiveField(2)
  DateTime date;
  @HiveField(3)
  double total;
  @HiveField(4)
  String? market;

  Purchase copyWith({
    String? id,
    List<Product>? products,
    DateTime? date,
    double? total,
    String? market,
  }) {
    return Purchase(
      id: id ?? this.id,
      products: products ?? this.products,
      date: date ?? this.date,
      total: total ?? this.total,
      market: market ?? this.market,
    );
  }
}
