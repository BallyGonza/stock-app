import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stock_app/data/data.dart';

class ProductCard extends StatelessWidget {
  const ProductCard.purchase({required this.product, super.key})
      : _isPurchase = true;

  const ProductCard.category({required this.product, super.key})
      : _isPurchase = false;

  final Product product;
  final bool _isPurchase;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        // onTap: () {
        //   if (!_isPurchase) {
        //     Navigator.of(context).push(
        //       MaterialPageRoute<Product>(
        //         builder: (context) => ProductScreen(product: product),
        //       ),
        //     );
        //   }
        // },
        leading: _isPurchase
            ? CircleAvatar(
                child: SvgPicture.asset(product.category.icon),
              )
            : null,
        title: Text(product.name),
        trailing: _isPurchase
            ? Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Subtotal:'),
                  Text(arg.format(product.quantity * product.price)),
                ],
              )
            : Text(product.quantity.toString()),
        subtitle: _isPurchase
            ? Text('${product.quantity}x${arg.format(product.price)}')
            : product.expiryDate == null
                ? null
                : Text(
                    'Fecha de vencimiento: ${dateFormat.format(product.expiryDate!)}',
                  ),
      ),
    );
  }
}
