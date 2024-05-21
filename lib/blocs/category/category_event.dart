import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stock_app/data/data.dart';

part 'category_event.freezed.dart';

@freezed
class CategoryEvent with _$CategoryEvent {
  const factory CategoryEvent.init() = CategoryInitialEvent;
  const factory CategoryEvent.save(CategoryModel category) = CategorySaveEvent;
  const factory CategoryEvent.delete(CategoryModel category) =
      CategoryDeleteEvent;
}
