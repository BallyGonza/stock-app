import 'package:flutter/material.dart';
import 'package:stock_app/views/views.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (_, index) {
            return const CategoryCard();
          },
        ),
      ),
    );
  }
}
