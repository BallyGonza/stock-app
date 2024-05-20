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
          // Custom SliverAppBar with title and delete button
          CustomSliverAppBar.text(
            title: purchase.market ?? 'Compra',
            actions: [
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.trashCan),
                onPressed: () => context.read<PurchaseBloc>().add(
                      PurchaseEvent.delete(purchase: purchase),
                    ),
              ),
            ],
            arrowBack: true,
          ),
          // List of product cards
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final product = purchase.products[index];
                return ProductCard(
                  product: product,
                );
              },
              childCount: purchase.products.length,
            ),
          ),
          // Total price section
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
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
