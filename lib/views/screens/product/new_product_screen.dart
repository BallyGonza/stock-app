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
  late Category _category;

  @override
  void dispose() {
    _nameController.dispose();
    _priceController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      final product = Product(
        id: const Uuid().v1(),
        name: _nameController.text,
        category: _category,
        quantity: 1,
        price: double.parse(_priceController.text),
      );
      Navigator.pop(context, product);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('New Product')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Product Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a product name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _priceController,
                decoration: InputDecoration(labelText: 'Product Price'),
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
                            .map((category) => DropdownMenuItem(
                                  value: category,
                                  child: Text(category.name,
                                      overflow: TextOverflow.ellipsis),
                                ))
                            .toList(),
                        decoration: InputDecoration(labelText: 'Category'),
                      );
                    },
                    orElse: () => const CircularProgressIndicator(),
                  );
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _submitForm,
                child: Text('Add Product'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
