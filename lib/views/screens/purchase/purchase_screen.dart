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

  final PurchaseModel purchase;

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
                  showDialog<CustomAlertDialog>(
                    context: context,
                    builder: (context) => CustomAlertDialog(
                      title: 'Eliminar compra',
                      content:
                          const Text('¿Estás seguro de eliminar esta compra?'),
                      onPressed: () {
                        context.read<PurchaseBloc>().add(
                              PurchaseEvent.delete(purchase),
                            );
                        for (final product in purchase.products) {
                          context.read<ProductBloc>().add(
                                ProductEvent.delete(product),
                              );
                        }
                        Navigator.pop(context);
                      },
                      primaryActionTitle: 'Eliminar',
                    ),
                  );
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
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        margin: const EdgeInsets.only(bottom: 16),
        height: 56,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Total:'),
            Text(arg.format(purchase.total)),
          ],
        ),
      ),
    );
  }
}
