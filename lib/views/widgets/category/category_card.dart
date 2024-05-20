import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stock_app/blocs/blocs.dart';
import 'package:stock_app/data/data.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    required this.category,
    super.key,
  });

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          child: SvgPicture.asset(category.icon),
        ),
        title: Text(category.name),
        subtitle: BlocBuilder<ProductBloc, ProductState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const CircularProgressIndicator(),
              loaded: (products) {
                final productsInCategory = products
                    .where((product) => product.category.name == category.name)
                    .toList();
                return Text('${productsInCategory.length}');
              },
            );
          },
        ),
        trailing: const Icon(Icons.chevron_right),
      ),
    );
  }
}
