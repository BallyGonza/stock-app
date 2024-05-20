import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:stock_app/blocs/blocs.dart';
import 'package:stock_app/data/data.dart';
import 'package:stock_app/services/services.dart';
import 'package:stock_app/views/views.dart';

Future<void> main() async {
  await HiveService.initializeHive();
  LocalizationService().setupLocalization();
  await SystemChromeService.setSystemChrome();

  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => CategoryRepository(
            categoryBox: Hive.box<Category>('categories_box'),
          ),
        ),
        RepositoryProvider(
          create: (context) => ProductRepository(
            productBox: Hive.box<Product>('products_box'),
          ),
        ),
        RepositoryProvider(
          create: (context) => PurchaseRepository(
            purchaseBox: Hive.box<Purchase>('purchases_box'),
          ),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => CategoryBloc(
              categoryRepository: context.read<CategoryRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => ProductBloc(
              productRepository: context.read<ProductRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => PurchaseBloc(
              purchaseRepository: context.read<PurchaseRepository>(),
            ),
          ),
        ],
        child: const App(),
      ),
    );
  }
}
