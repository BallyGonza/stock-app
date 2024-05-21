import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stock_app/data/data.dart';
import 'package:stock_app/views/screens/screens.dart';

class PurchaseCard extends StatelessWidget {
  const PurchaseCard({
    required this.purchase,
    super.key,
  });

  final PurchaseModel purchase;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute<PurchaseScreen>(
              builder: (context) => PurchaseScreen(
                purchase: purchase,
              ),
            ),
          );
        },
        leading: CircleAvatar(
          child: SvgPicture.asset(AppImages.cartIcon),
        ),
        title: Text(purchase.market ?? 'Compra'),
        subtitle: Text(dateFormat.format(purchase.date)),
        trailing: Text(arg.format(purchase.total)),
      ),
    );
  }
}
