import 'package:hive/hive.dart';
import 'package:stock_app/data/data.dart';

part 'user_model.g.dart';

@HiveType(typeId: 0)
class UserModel extends HiveObject {
  UserModel({
    required this.id,
    required this.categories,
    required this.products,
    required this.purchases,
    required this.markets,
  });

  @HiveField(0)
  int id;
  @HiveField(1)
  List<CategoryModel> categories;
  @HiveField(2)
  List<ProductModel> products;
  @HiveField(3)
  List<PurchaseModel> purchases;
  @HiveField(4)
  List<MarketModel> markets;
}
