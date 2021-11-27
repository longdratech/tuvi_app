import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tuvi_booking/models/table_food.dart';

class CardView extends StatefulWidget {
  final TableFood tableFood;

  const CardView({required this.tableFood});

  @override
  _CardViewState createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.grey,
      elevation: 5,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 20,
              children: [
                Text(
                  widget.tableFood.number.toString(),
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
                Wrap(
                  spacing: 5,
                  direction: Axis.vertical,
                  children:
                      widget.tableFood.foods.map((e) => Text(e.title)).toList(),
                ),
              ],
            ),
            Text(
              widget.tableFood.isNew ? "*" : "",
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
