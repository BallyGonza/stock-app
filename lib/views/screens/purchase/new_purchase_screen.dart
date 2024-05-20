import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stock_app/blocs/blocs.dart';
import 'package:stock_app/data/data.dart';
import 'package:stock_app/views/views.dart';
import 'package:uuid/uuid.dart';

class NewPurchaseScreen extends StatefulWidget {
  const NewPurchaseScreen({super.key});

  @override
  State<NewPurchaseScreen> createState() => _NewPurchaseScreenState();
}

class _NewPurchaseScreenState extends State<NewPurchaseScreen> {
  List<Product> products = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute<Product>(
              builder: (context) => const NewProductScreen(),
            ),
          ).then((value) {
            if (value != null) {
              setState(() {
                products.add(value);
              });
            }
          });
        },
        child: const FaIcon(FontAwesomeIcons.plus),
      ),
      body: CustomScrollView(
        slivers: [
          CustomSliverAppBar.text(
            title: 'Nueva compra',
            actions: [
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.floppyDisk),
                onPressed: () => _purchase(context),
              ),
            ],
            arrowBack: true,
          ),
          SliverFillRemaining(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: products.isEmpty
                  ? const Center(
                      child: Text('Agregar productos'),
                    )
                  : ListView.builder(
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        final product = products[index];
                        return ProductCard(
                          product: product,
                        );
                      },
                    ),
            ),
          ),
        ],
      ),
    );
  }

  void _purchase(BuildContext context) {
    context.read<PurchaseBloc>().add(
          PurchaseEvent.save(
            purchase: Purchase(
              id: const Uuid().v1(),
              date: DateTime.now(),
              products: products,
              total: products.fold<double>(
                0,
                (previousValue, element) =>
                    previousValue + (element.price * element.quantity),
              ),
            ),
          ),
        );

    for (final product in products) {
      context.read<ProductBloc>().add(
            ProductEvent.save(product: product),
          );
    }

    Navigator.pop(context);
  }
}
