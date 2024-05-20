import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stock_app/views/views.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final pageController = PageController();
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute<NewPurchaseScreen>(
              builder: (context) => const NewPurchaseScreen(),
            ),
          );
        },
        child: const FaIcon(FontAwesomeIcons.plus),
      ),
      body: PageView(
        controller: pageController,
        children: const [
          CategoriesScreen(),
          PurchasesScreen(),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: index,
        destinations: const [
          NavigationDestination(
            icon: FaIcon(FontAwesomeIcons.box),
            label: 'Categorías',
          ),
          NavigationDestination(
            icon: FaIcon(FontAwesomeIcons.cartShopping),
            label: 'Compras',
          ),
        ],
        onDestinationSelected: (index) {
          setState(() {
            this.index = index;
          });
          pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
        },
      ),
    );
  }
}
