import 'package:flutter/material.dart';
import 'package:tuvi_booking/models/order.dart';
import 'package:tuvi_booking/models/table_order.dart';
import 'package:tuvi_booking/widgets/card_view.dart';

class NewOrderPage extends StatefulWidget {
  const NewOrderPage({Key? key}) : super(key: key);

  @override
  _NewOrderPageState createState() => _NewOrderPageState();
}

class _NewOrderPageState extends State<NewOrderPage> {
  /// FIXME: dummy data
  final List<TableOrder> a = [
    new TableOrder(
        number: 1,
        foods: [
          new Order(id: 1, title: "title 1"),
          new Order(id: 1, title: "title 1"),
        ],
        isNew: true),
    new TableOrder(
      number: 2,
      foods: [
        new Order(id: 1, title: "title 2"),
        new Order(id: 1, title: "title 2"),
      ],
    ),
    new TableOrder(
        number: 3,
        foods: [
          new Order(id: 1, title: "title 3"),
          new Order(id: 1, title: "title 3"),
        ],
        isNew: true)
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
      children: a
          .map(
            (e) => CardView(tableFood: e),
          )
          .toList(),
    ));
  }
}
