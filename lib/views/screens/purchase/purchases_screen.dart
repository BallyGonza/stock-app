import 'package:flutter/material.dart';
import 'package:stock_app/views/views.dart';

class PurchasesScreen extends StatelessWidget {
  const PurchasesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          CustomSliverAppBar.text(title: 'Compras'),
          PurchaseList(),
        ],
      ),
    );
  }
}
