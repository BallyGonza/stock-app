import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stock_app/blocs/blocs.dart';
import 'package:stock_app/data/data.dart';
import 'package:stock_app/views/views.dart';

class PurchaseScreen extends StatelessWidget {
  const PurchaseScreen({
    required this.purchase,
    super.key,
  });

  final Purchase purchase;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          CustomSliverAppBar.text(
            title: purchase.market ?? 'Compra',
            actions: [
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.trashCan),
                onPressed: () {
                  context.read<PurchaseBloc>().add(
                        PurchaseEvent.delete(purchase: purchase),
                      );
                  for (final product in purchase.products) {
                    context.read<ProductBloc>().add(
                          ProductEvent.delete(product: product),
                        );
                  }
                  Navigator.pop(context);
                },
              ),
            ],
            arrowBack: true,
          ),
          // List of product cards
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final product = purchase.products[index];
                  return ProductCard.purchase(
                    product: product,
                  );
                },
                childCount: purchase.products.length,
              ),
            ),
          ),
          // Total price section
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Total:'),
                  Text(arg.format(purchase.total)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
