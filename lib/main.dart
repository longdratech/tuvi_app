import 'package:flutter/material.dart';
import 'package:tuvi_booking/models/food.dart';
import 'package:tuvi_booking/models/table_food.dart';
import 'package:tuvi_booking/widgets/card_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  /// FIXME: dummy data
  final List<TableFood> a = [
    new TableFood(
      number: 1,
      foods: [
        new Food(id: 1, title: "title 1"),
        new Food(id: 1, title: "title 1"),
      ],
      isNew: true
    ),
    new TableFood(
      number: 2,
      foods: [
        new Food(id: 1, title: "title 2"),
        new Food(id: 1, title: "title 2"),
      ],
    ),
    new TableFood(
      number: 3,
      foods: [
        new Food(id: 1, title: "title 3"),
        new Food(id: 1, title: "title 3"),
      ],
        isNew: true
    )
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          padding: EdgeInsets.all(20),
          child: ListView(
            children: a
                .map(
                  (e) => CardView(tableFood: e),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
