import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:stock_app/data/data.dart';

class HiveService {
  static Future<void> initializeHive() async {
    try {
      Hive
        ..registerAdapter(CategoryModelAdapter())
        ..registerAdapter(ProductModelAdapter())
        ..registerAdapter(MarketModelAdapter())
        ..registerAdapter(PurchaseModelAdapter());
      WidgetsFlutterBinding.ensureInitialized();
      await Hive.initFlutter();
      // Opening boxes.
      await Hive.openBox<CategoryModel>('categories_box');
    } catch (e) {
      if (kDebugMode) {
        print('Failed to initialize Hive: $e');
      }
    }
  }
}
