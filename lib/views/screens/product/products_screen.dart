import 'package:flutter/material.dart';
import 'package:stock_app/data/data.dart';
import 'package:stock_app/views/views.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({required this.products, super.key});

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    // Sort products by expiry date
    final sortedProducts = List<Product>.from(products)
      ..sort((a, b) {
        if (a.expiryDate == null && b.expiryDate == null) {
          return 0;
        } else if (a.expiryDate == null) {
          return 1;
        } else if (b.expiryDate == null) {
          return -1;
        } else {
          return a.expiryDate!.compareTo(b.expiryDate!);
        }
      });

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          CustomSliverAppBar.text(
            title: products.first.name,
            arrowBack: true,
          ),
          SliverFillRemaining(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: ListView.builder(
                itemCount: sortedProducts.length,
                itemBuilder: (context, index) {
                  final product = sortedProducts[index];
                  return Card(
                    child: ListTile(
                      title: Text(product.name),
                      subtitle: Text(
                        'Vencimiento: ${product.expiryDate == null ? 'No especificada' : dateFormat.format(product.expiryDate!)}\nPrecio: ${arg.format(product.price)}',
                      ),
                      trailing: Text('Cantidad: ${product.quantity}'),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
