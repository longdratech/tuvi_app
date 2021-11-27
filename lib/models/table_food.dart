import 'package:json_annotation/json_annotation.dart';
import 'package:tuvi_booking/models/food.dart';

part 'table_food.g.dart';

@JsonSerializable()
class TableFood {
  final int number;
  final List<Food> foods;
  final bool isNew;

  TableFood({required this.number, required this.foods, this.isNew = false});

  factory TableFood.fromJson(Map<String, dynamic> json) =>
      _$TableFoodFromJson(json);
}
