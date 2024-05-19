import 'package:hive_flutter/hive_flutter.dart';
import 'package:stock_app/data/data.dart';

class PurchaseRepository {
  PurchaseRepository({required this.purchaseBox});
  final Box<Purchase> purchaseBox;

  Future<List<Purchase>> getAll() async {
    if (purchaseBox.isEmpty) {
      return [];
    }
    return purchaseBox.values.toList();
  }

  Future<void> save({required Purchase purchase}) async {
    await purchaseBox.put(purchase.id, purchase);
  }

  Future<void> delete({required Purchase purchase}) async {
    await purchaseBox.delete(purchase.id);
  }
}
