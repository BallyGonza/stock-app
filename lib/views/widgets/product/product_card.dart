import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stock_app/data/data.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({required this.product, super.key});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          child: SvgPicture.asset(product.category.icon),
        ),
        title: Text(product.name),
        trailing: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Subtotal:'),
            Text(arg.format(product.quantity * product.price)),
          ],
        ),
        subtitle: Text('${product.quantity}x${arg.format(product.price)}'),
      ),
    );
  }
}
