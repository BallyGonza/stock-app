import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Stock'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const FaIcon(FontAwesomeIcons.plus),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            height: 60,
            child: SearchBar(
              hintText: 'Buscar...',
              onChanged: (_){},
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            icon: FaIcon(FontAwesomeIcons.box),
            label: 'Productos',
          ),
          NavigationDestination(
            icon: FaIcon(FontAwesomeIcons.cartShopping),
            label: 'Compras',
          ),
        ],
      ),
    );
  }
}
