import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
        subtitle: Text(category.products.length.toString()),
        trailing: const Icon(Icons.chevron_right),
      ),
    );
  }
}
