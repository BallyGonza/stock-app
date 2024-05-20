import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stock_app/blocs/blocs.dart';
import 'package:stock_app/data/data.dart';
import 'package:uuid/uuid.dart';

class NewProductScreen extends StatefulWidget {
  const NewProductScreen({super.key});

  @override
  State<NewProductScreen> createState() => _NewProductScreenState();
}

class _NewProductScreenState extends State<NewProductScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _priceController = TextEditingController();
  final _quantityController = TextEditingController();
  final _expirationDateController = TextEditingController();
  late Category _category;

  @override
  void dispose() {
    _nameController.dispose();
    _priceController.dispose();
    _quantityController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      final product = Product(
        id: const Uuid().v1(),
        name: _nameController.text,
        category: _category,
        expiryDate: _expirationDateController.text.isNotEmpty
            ? dateFormat.parse(_expirationDateController.text)
            : null,
        quantity: int.parse(_quantityController.text),
        price: double.parse(_priceController.text),
      );
      Navigator.pop(context, product);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('New Product')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: 'Product Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a product name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _priceController,
                decoration: const InputDecoration(labelText: 'Product Price'),
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
              // textFormField for quantity
              TextFormField(
                controller: _quantityController,
                decoration:
                    const InputDecoration(labelText: 'Product Quantity'),
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
              // DateTimeField for expiration date
              TextButton(
                onPressed: () => showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime.now().add(const Duration(days: 365 * 10)),
                ).then((value) {
                  if (value != null) {
                    setState(() {
                      _expirationDateController.text = dateFormat.format(value);
                    });
                  }
                }),
                child: Text(
                  _expirationDateController.text.isEmpty
                      ? 'Select Expiration Date'
                      : _expirationDateController.text,
                ),
              ),
              BlocBuilder<CategoryBloc, CategoryState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    loaded: (categories) {
                      return DropdownButtonFormField<Category>(
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
                        decoration:
                            const InputDecoration(labelText: 'Category'),
                      );
                    },
                    orElse: () => const CircularProgressIndicator(),
                  );
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _submitForm,
                child: const Text('Add Product'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
