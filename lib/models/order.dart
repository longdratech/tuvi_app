import 'package:json_annotation/json_annotation.dart';

part 'order.g.dart';

@JsonSerializable()
class Order {
  final int id;
  final String title;

  Order({required this.id, required this.title});

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}
