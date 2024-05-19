import 'package:hive/hive.dart';

part 'market_model.g.dart';

@HiveType(typeId: 4)
class MarketModel extends HiveObject {
  MarketModel({
    required this.id,
    required this.name,
    required this.icon,
  });

  @HiveField(0)
  int id;
  @HiveField(1)
  String name;
  @HiveField(2)
  String icon;

  MarketModel copyWith({
    int? id,
    String? name,
    String? icon,
  }) {
    return MarketModel(
      id: id ?? this.id,
      name: name ?? this.name,
      icon: icon ?? this.icon,
    );
  }
}
