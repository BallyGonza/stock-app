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
  final _marketController = TextEditingController();
  List<ProductModel> products = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute<ProductModel>(
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
          const CustomSliverAppBar.text(
            title: 'Nueva compra',
            arrowBack: true,
          ),
          if (products.isEmpty)
            const SliverFillRemaining(
              child: Center(
                child: Text('No hay productos en la compra'),
              ),
            )
          else
            SliverPadding(
              padding: const EdgeInsets.all(16),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final product = products[index];
                    return InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .push(
                          MaterialPageRoute<ProductModel>(
                            builder: (context) =>
                                NewProductScreen.edit(product: product),
                          ),
                        )
                            .then((value) {
                          if (value != null) {
                            setState(() {
                              products[index] = value;
                            });
                          }
                        });
                      },
                      child: ProductCard.purchase(
                        product: product,
                      ),
                    );
                  },
                  childCount: products.length,
                ),
              ),
            ),
          if (products.isEmpty)
            const SliverToBoxAdapter()
          else
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              sliver: SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Total:'),
                    Text(
                      arg.format(
                        products.fold<double>(
                          0,
                          (previousValue, element) =>
                              previousValue +
                              (element.price * element.quantity),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        margin: const EdgeInsets.only(bottom: 16),
        height: 56,
        child: ElevatedButton(
          onPressed: () => showDialog<CustomAlertDialog>(
            context: context,
            builder: (context) => CustomAlertDialog(
              title: 'Confirmar compra',
              content: TextFormField(
                textCapitalization: TextCapitalization.words,
                controller: _marketController,
                decoration: const InputDecoration(
                  hintText: 'Nombre del mercado',
                  labelText: 'Mercado',
                ),
              ),
              onPressed: () => _purchase(context),
              primaryActionTitle: 'Confirmar',
            ),
          ),
          child: const Text('Guardar compra'),
        ),
      ),
    );
  }

  void _purchase(BuildContext context) {
    if (products.isEmpty) {
      // Show error
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('No hay productos en la compra'),
        ),
      );
      return;
    }
    context.read<PurchaseBloc>().add(
          PurchaseEvent.save(
            PurchaseModel(
              id: const Uuid().v1(),
              date: DateTime.now(),
              products: products,
              market: _marketController.text.trim(),
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
            ProductEvent.save(product),
          );
    }

    Navigator.pop(context);
  }
}
