import 'package:hive/hive.dart';
import 'package:stock_app/data/data.dart';

part 'purchase_model.g.dart';

@HiveType(typeId: 3)
class PurchaseModel extends HiveObject {
  PurchaseModel({
    required this.id,
    required this.products,
    required this.total,
    this.date,
    this.market,
  });

  @HiveField(0)
  int id;
  @HiveField(1)
  List<ProductModel> products;
  @HiveField(2)
  DateTime? date;
  @HiveField(3)
  double total;
  @HiveField(4)
  MarketModel? market;

  PurchaseModel copyWith({
    int? id,
    List<ProductModel>? products,
    DateTime? date,
    double? total,
    MarketModel? market,
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
