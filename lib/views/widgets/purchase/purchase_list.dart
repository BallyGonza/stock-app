import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_app/blocs/blocs.dart';
import 'package:stock_app/views/views.dart';

class PurchaseList extends StatelessWidget {
  const PurchaseList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PurchaseBloc, PurchaseState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const SliverFillRemaining(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          ),
          loaded: (purchases) => purchases.isEmpty
              ? const SliverFillRemaining(
                  child: Center(
                    child: Text('No hay compras'),
                  ),
                )
              : SliverPadding(
                  padding: const EdgeInsets.all(8),
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final purchase = purchases[index];
                        return PurchaseCard(purchase: purchase);
                      },
                      childCount: purchases.length,
                    ),
                  ),
                ),
        );
      },
    );
  }
}
