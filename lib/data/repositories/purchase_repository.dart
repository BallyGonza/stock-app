import 'package:hive_flutter/hive_flutter.dart';
import 'package:stock_app/data/data.dart';

class PurchaseRepository {
  PurchaseRepository({required this.purchaseBox});
  final Box<PurchaseModel> purchaseBox;

  Future<List<PurchaseModel>> getPurchases() async {
    if (purchaseBox.isEmpty) {
      return [];
    }
    return purchaseBox.values.toList();
  }

  Future<void> savePurchase(PurchaseModel purchase) async {
    await purchaseBox.put(purchase.id, purchase);
  }

  Future<void> deletePurchase(PurchaseModel purchase) async {
    await purchaseBox.delete(purchase.id);
  }
}
