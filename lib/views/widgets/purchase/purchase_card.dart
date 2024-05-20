import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stock_app/data/data.dart';

class PurchaseCard extends StatelessWidget {
  const PurchaseCard({
    required this.purchase,
    super.key,
  });

  final Purchase purchase;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          child: SvgPicture.asset(AppImages.sweetCategory),
        ),
        title: Text(purchase.market ?? 'Compra'),
        subtitle: Text(purchase.products.length.toString()),
        trailing: const Icon(Icons.chevron_right),
      ),
    );
  }
}
