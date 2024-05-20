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
        subtitle: Text(arg.format(product.price)),
        trailing: Text(product.quantity.toString()),
      ),
    );
  }
}
