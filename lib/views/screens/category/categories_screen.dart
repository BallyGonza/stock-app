import 'package:flutter/material.dart';
import 'package:stock_app/views/views.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          CustomSliverAppBar.text(title: 'Categorías'),
          CategoryList(),
        ],
      ),
    );
  }
}
