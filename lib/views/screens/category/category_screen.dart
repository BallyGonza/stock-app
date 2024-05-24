import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stock_app/blocs/blocs.dart';
import 'package:stock_app/data/data.dart';
import 'package:stock_app/views/views.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({
    required this.category,
    super.key,
  });

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          CustomSliverAppBar.text(
            title: category.name,
            arrowBack: true,
          ),
          SliverFillRemaining(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: BlocBuilder<ProductBloc, ProductState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    loaded: (products) {
                      // Filter products by category
                      final categoryProducts = products
                          .where(
                            (product) => product.category.name == category.name,
                          )
                          .toList();

                      if (categoryProducts.isEmpty) {
                        return Center(
                          child: Opacity(
                            opacity: 0.3,
                            child: Center(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SvgPicture.asset(
                                    AppImages.purchaseIcon,
                                    width: 100,
                                  ),
                                  const SizedBox(height: 16),
                                  const Text(
                                    'No hay productos en la categoría',
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }

                      // Group products by name and calculate total quantity
                      final productGroups = <String, int>{};
                      for (final product in categoryProducts) {
                        if (productGroups.containsKey(product.name)) {
                          productGroups[product.name] =
                              productGroups[product.name]! + product.quantity;
                        } else {
                          productGroups[product.name] = product.quantity;
                        }
                      }

                      final groupedProducts = productGroups.entries.toList();

                      return ListView.builder(
                        itemCount: groupedProducts.length,
                        itemBuilder: (context, index) {
                          final productName = groupedProducts[index].key;
                          final productQuantity = groupedProducts[index].value;
                          return ProductGroupCard(
                            productName: productName,
                            productQuantity: productQuantity,
                            categoryProducts: categoryProducts,
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
