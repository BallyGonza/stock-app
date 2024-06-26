import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stock_app/data/data.dart';

part 'product_event.freezed.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.init() = ProductInitialEvent;
  const factory ProductEvent.save(ProductModel product) = ProductSaveEvent;
  const factory ProductEvent.delete(ProductModel product) = ProductDeleteEvent;
}
