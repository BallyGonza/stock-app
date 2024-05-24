import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_app/blocs/blocs.dart';
import 'package:stock_app/views/views.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBloc, CategoryState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const SliverFillRemaining(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          ),
          loaded: (categories) => categories.isEmpty
              ? const SliverFillRemaining(
                  child: Center(
                    child: Text('No hay categorías'),
                  ),
                )
              : SliverPadding(
                  padding: const EdgeInsets.only(
                    top: 8,
                    bottom: 80,
                    left: 8,
                    right: 8,
                  ),
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final category = categories[index];
                        return CategoryCard(category: category);
                      },
                      childCount: categories.length,
                    ),
                  ),
                ),
        );
      },
    );
  }
}
