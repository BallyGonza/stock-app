import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stock_app/blocs/blocs.dart';
import 'package:stock_app/data/data.dart';
import 'package:stock_app/views/views.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    required this.category,
    super.key,
  });

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute<CategoryModel>(
              builder: (context) => CategoryScreen(category: category),
            ),
          );
        },
        leading: CircleAvatar(
          child: SvgPicture.asset(category.icon),
        ),
        title: Text(category.name),
        trailing: BlocBuilder<ProductBloc, ProductState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const CircularProgressIndicator(),
              loaded: (products) {
                final totalQuantity = products
                    .where((product) => product.category.name == category.name)
                    .fold<int>(0, (sum, product) => sum + product.quantity);
                return Text('$totalQuantity');
              },
            );
          },
        ),
      ),
    );
  }
}
