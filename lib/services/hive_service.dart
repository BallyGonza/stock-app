import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:stock_app/data/data.dart';

class HiveService {
  static Future<void> initializeHive() async {
    try {
      Hive
        ..registerAdapter(CategoryAdapter())
        ..registerAdapter(ProductAdapter())
        ..registerAdapter(PurchaseAdapter());
      WidgetsFlutterBinding.ensureInitialized();
      await Hive.initFlutter();
      await Hive.openBox<Category>('categories_box');
      await Hive.openBox<Product>('products_box');
      await Hive.openBox<Purchase>('purchases_box');
    } catch (e) {
      log('Error initializing Hive: $e');
    }
  }
}
