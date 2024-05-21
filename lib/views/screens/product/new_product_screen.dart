import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_app/blocs/blocs.dart';
import 'package:stock_app/data/data.dart';
import 'package:stock_app/views/views.dart';
import 'package:uuid/uuid.dart';

class NewProductScreen extends StatefulWidget {
  const NewProductScreen({super.key, this.product});

  const NewProductScreen.edit({required this.product, super.key});

  final ProductModel? product;

  @override
  State<NewProductScreen> createState() => _NewProductScreenState();
}

class _NewProductScreenState extends State<NewProductScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _priceController = TextEditingController();
  final _quantityController = TextEditingController();
  final _expirationDateController = TextEditingController();
  final _brandController = TextEditingController();
  late CategoryModel _category;

  @override
  void initState() {
    super.initState();
    if (widget.product != null) {
      _nameController.text = widget.product!.name;
      _priceController.text = widget.product!.price.toString();
      _quantityController.text = widget.product!.quantity.toString();
      _expirationDateController.text = widget.product!.expiryDate != null
          ? dateFormat.format(widget.product!.expiryDate!)
          : '';
      _brandController.text = widget.product!.brand;
      _category = widget.product!.category;
    } else {
      _category = context.read<CategoryBloc>().state.maybeWhen(
            loaded: (categories) => categories.first,
            orElse: () =>
                CategoryModel(id: '', name: '', icon: AppImages.cartIcon),
          );
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _priceController.dispose();
    _quantityController.dispose();
    _brandController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      final product = ProductModel(
        id: widget.product?.id ?? const Uuid().v1(),
        name: _nameController.text.trim(),
        category: _category,
        expiryDate: _expirationDateController.text.isNotEmpty
            ? dateFormat.parse(_expirationDateController.text)
            : null,
        quantity: int.parse(_quantityController.text),
        price: double.parse(_priceController.text),
        brand: _brandController.text.trim(),
      );
      Navigator.pop(context, product);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          CustomSliverAppBar.text(
            title:
                widget.product == null ? 'Nuevo Producto' : 'Editar Producto',
            arrowBack: true,
          ),
          SliverFillRemaining(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Form(
                key: _formKey,
                child: ListView(
                  children: [
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      textCapitalization: TextCapitalization.words,
                      controller: _nameController,
                      decoration: const InputDecoration(labelText: 'Nombre'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a product name';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            textInputAction: TextInputAction.next,
                            textCapitalization: TextCapitalization.words,
                            controller: _priceController,
                            decoration: const InputDecoration(
                              labelText: 'Precio',
                              prefixText: r'$',
                            ),
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter a product price';
                              }
                              if (double.tryParse(value) == null) {
                                return 'Please enter a valid number';
                              }
                              return null;
                            },
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: TextFormField(
                            textInputAction: TextInputAction.next,
                            textCapitalization: TextCapitalization.words,
                            controller: _quantityController,
                            decoration: const InputDecoration(
                              labelText: 'Cantidad',
                            ),
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter a product quantity';
                              }
                              if (int.tryParse(value) == null) {
                                return 'Please enter a valid number';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      textCapitalization: TextCapitalization.words,
                      controller: _brandController,
                      decoration: const InputDecoration(labelText: 'Marca'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a product brand';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 12),
                    ListTile(
                      title: const Text('Expiration Date'),
                      subtitle: Text(
                        _expirationDateController.text.isEmpty
                            ? 'Select Expiration Date'
                            : _expirationDateController.text,
                      ),
                      trailing: const Icon(Icons.calendar_today),
                      onTap: () => showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime.now(),
                        lastDate:
                            DateTime.now().add(const Duration(days: 365 * 10)),
                      ).then((value) {
                        if (value != null) {
                          setState(() {
                            _expirationDateController.text =
                                dateFormat.format(value);
                          });
                        }
                      }),
                    ),
                    const SizedBox(height: 12),
                    BlocBuilder<CategoryBloc, CategoryState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                          loaded: (categories) {
                            return ListTile(
                              contentPadding: EdgeInsets.zero,
                              title: const Text('Categoria'),
                              subtitle: DropdownButtonFormField<CategoryModel>(
                                onChanged: (value) {
                                  setState(() {
                                    _category = value!;
                                  });
                                },
                                items: categories
                                    .map(
                                      (category) => DropdownMenuItem(
                                        value: category,
                                        child: Text(
                                          category.name,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    )
                                    .toList(),
                                value: _category,
                                hint: const Text('Category'),
                              ),
                            );
                          },
                          orElse: () => const CircularProgressIndicator(),
                        );
                      },
                    ),
                    const SizedBox(height: 12),
                    ElevatedButton(
                      onPressed: _submitForm,
                      child: const Text('Save Product'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
