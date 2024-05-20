import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_app/blocs/blocs.dart';
import 'package:stock_app/data/data.dart';
import 'package:stock_app/views/views.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({
    required this.category,
    super.key,
  });

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // Custom SliverAppBar with title and delete button
          CustomSliverAppBar.text(
            title: category.name,
            // actions: [
            //   IconButton(
            //     icon: const FaIcon(FontAwesomeIcons.trashCan),
            //     onPressed: () => context.read<CategoryBloc>().add(
            //           CategoryEvent.delete(category: category),
            //         ),
            //   ),
            // ],
            arrowBack: true,
          ),
          // List of product cards
          SliverFillRemaining(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: BlocBuilder<ProductBloc, ProductState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    loaded: (products) {
                      final categoryProducts = products
                          .where(
                            (product) => product.category.name == category.name,
                          )
                          .toList();
                      return categoryProducts.isEmpty
                          ? const Center(
                              child: Text('No hay productos en esta categoría'),
                            )
                          : ListView.builder(
                              itemCount: categoryProducts.length,
                              itemBuilder: (context, index) {
                                final product = categoryProducts[index];
                                return ProductCard.category(
                                  product: product,
                                );
                              },
                            );
                    },
                    orElse: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
