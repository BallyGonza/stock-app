import 'package:hive_flutter/hive_flutter.dart';
import 'package:stock_app/data/data.dart';

class ProductRepository {
  ProductRepository({required this.productBox});
  final Box<Product> productBox;

  Future<List<Product>> getAll() async {
    if (productBox.isEmpty) {
      return [];
    }
    return productBox.values.toList();
  }

  Future<void> save({required Product product}) async {
    await productBox.put(product.id, product);
  }

  Future<void> delete({required Product product}) async {
    await productBox.delete(product.id);
  }
}
