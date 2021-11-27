import 'package:json_annotation/json_annotation.dart';

part 'food.g.dart';

@JsonSerializable()
class Food {
  final int id;
  final String title;

  Food({required this.id, required this.title});

  factory Food.fromJson(Map<String, dynamic> json) => _$FoodFromJson(json);
}
