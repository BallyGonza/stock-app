import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stock_app/data/data.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(child: SvgPicture.asset(AppImages.dairyProducts)),
        title: const Text('Meat'),
        subtitle: const Text('0 products'),
        trailing: const Icon(Icons.chevron_right),
      ),
    );
  }
}
