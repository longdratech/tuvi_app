// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_food.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TableFood _$TableFoodFromJson(Map<String, dynamic> json) => TableFood(
      number: json['number'] as int,
      foods: (json['foods'] as List<dynamic>)
          .map((e) => Food.fromJson(e as Map<String, dynamic>))
          .toList(),
      isNew: json['isNew'] as bool? ?? false,
    );

Map<String, dynamic> _$TableFoodToJson(TableFood instance) => <String, dynamic>{
      'number': instance.number,
      'foods': instance.foods,
      'isNew': instance.isNew,
    };
