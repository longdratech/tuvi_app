import 'package:json_annotation/json_annotation.dart';
import 'package:tuvi_booking/models/order.dart';

part 'table_order.g.dart';

@JsonSerializable()
class TableOrder {
  final int number;
  final List<Order> foods;
  final bool isNew;

  TableOrder({required this.number, required this.foods, this.isNew = false});

  factory TableOrder.fromJson(Map<String, dynamic> json) =>
      _$TableOrderFromJson(json);
}
