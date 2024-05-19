import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_app/blocs/blocs.dart';
import 'package:stock_app/views/views.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: BlocBuilder<CategoryBloc, CategoryState>(
          builder: (context, state) {
            return state.maybeWhen(
              loaded: (categories) {
                return ListView.builder(
                  itemCount: categories.length,
                  itemBuilder: (_, index) {
                    return CategoryCard(
                      category: categories[index],
                    );
                  },
                );
              },
              orElse: () {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
