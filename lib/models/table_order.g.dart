// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TableOrder _$TableOrderFromJson(Map<String, dynamic> json) => TableOrder(
      number: json['number'] as int,
      foods: (json['foods'] as List<dynamic>)
          .map((e) => Order.fromJson(e as Map<String, dynamic>))
          .toList(),
      isNew: json['isNew'] as bool? ?? false,
    );

Map<String, dynamic> _$TableOrderToJson(TableOrder instance) =>
    <String, dynamic>{
      'number': instance.number,
      'foods': instance.foods,
      'isNew': instance.isNew,
    };
