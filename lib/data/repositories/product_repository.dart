import 'package:hive_flutter/hive_flutter.dart';
import 'package:stock_app/data/data.dart';

class ProductRepository {
  ProductRepository({required this.productBox});
  final Box<ProductModel> productBox;

  Future<List<ProductModel>> getProducts() async {
    if (productBox.isEmpty) {
      return [];
    }
    return productBox.values.toList();
  }

  Future<void> saveProduct(ProductModel product) async {
    await productBox.put(product.id, product);
  }

  Future<void> updateProduct(ProductModel product) async {
    await productBox.put(product.id, product);
  }

  Future<void> deleteProduct(ProductModel product) async {
    await productBox.delete(product.id);
  }
}
