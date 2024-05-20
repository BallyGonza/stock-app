import 'package:flutter/material.dart';
import 'package:stock_app/data/data.dart';
import 'package:stock_app/views/views.dart';

class ProductGroupCard extends StatelessWidget {
  const ProductGroupCard({
    required this.productName,
    required this.productQuantity,
    required this.categoryProducts,
    super.key,
  });

  final String productName;
  final int productQuantity;
  final List<Product> categoryProducts;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(productName),
        trailing: Text('Cantidad: $productQuantity'),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute<ProductsScreen>(
              builder: (context) => ProductsScreen(
                products: categoryProducts
                    .where(
                      (product) => product.name == productName,
                    )
                    .toList(),
              ),
            ),
          );
        },
      ),
    );
  }
}
