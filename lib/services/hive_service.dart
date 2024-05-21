import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:stock_app/data/data.dart';

class HiveService {
  static Future<void> initializeHive() async {
    try {
      Hive
        ..registerAdapter(CategoryModelAdapter())
        ..registerAdapter(ProductModelAdapter())
        ..registerAdapter(PurchaseModelAdapter());
      WidgetsFlutterBinding.ensureInitialized();
      await Hive.initFlutter();
      await Hive.openBox<CategoryModel>('categories_box');
      await Hive.openBox<ProductModel>('products_box');
      await Hive.openBox<PurchaseModel>('purchases_box');
    } catch (e) {
      log('Error initializing Hive: $e');
    }
  }
}
