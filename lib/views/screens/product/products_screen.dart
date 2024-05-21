import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:stock_app/blocs/blocs.dart';
import 'package:stock_app/data/data.dart';
import 'package:stock_app/views/views.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({required this.products, super.key});

  final List<ProductModel> products;

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          CustomSliverAppBar.text(
            title: widget.products.first.name,
            arrowBack: true,
          ),
          SliverFillRemaining(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: BlocBuilder<ProductBloc, ProductState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    loaded: _buildProductsList,
                    orElse: () =>
                        const Center(child: CircularProgressIndicator()),
                    error: (error) => Center(child: Text('Error: $error')),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductsList(List<ProductModel> products) {
    final sortedProducts = List<ProductModel>.from(products)
      ..sort((a, b) {
        if (a.expiryDate == null && b.expiryDate == null) {
          return 0;
        } else if (a.expiryDate == null) {
          return 1;
        } else if (b.expiryDate == null) {
          return -1;
        } else {
          return a.expiryDate!.compareTo(b.expiryDate!);
        }
      });

    return ListView.builder(
      itemCount: sortedProducts.length,
      itemBuilder: (context, index) {
        final product = sortedProducts[index];
        return _buildProductItem(product);
      },
    );
  }

  Widget _buildProductItem(ProductModel product) {
    return Slidable(
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        extentRatio: 0.25,
        children: [
          SlidableAction(
            borderRadius: BorderRadius.circular(8),
            onPressed: (_) => _onRemoveProduct(product),
            icon: Icons.delete,
            foregroundColor: Colors.white,
            backgroundColor: Colors.red,
          ),
        ],
      ),
      child: Card(
        child: ListTile(
          title: Text(product.brand),
          subtitle: Text(
            'Vencimiento: ${product.expiryDate == null ? 'No especificada' : dateFormat.format(product.expiryDate!)}\nPrecio: ${arg.format(product.price)}',
          ),
          trailing: Text('Cantidad: ${product.quantity}'),
        ),
      ),
    );
  }

  void _onRemoveProduct(ProductModel product) {
    if (product.quantity > 1) {
      context.read<ProductBloc>().add(
            ProductEvent.save(product.copyWith(quantity: product.quantity - 1)),
          );
    } else {
      context.read<ProductBloc>().add(ProductEvent.delete(product));
    }
  }
}
