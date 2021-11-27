import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardView extends StatefulWidget {
  final int number;
  final List<String> foods;

  const CardView({required this.number, required this.foods});

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
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Text(
              widget.number.toString(),
              style: TextStyle(
                  color: Colors.red, fontSize: 50, fontWeight: FontWeight.bold),
            ),
            Wrap(
              spacing: 5,
              direction: Axis.vertical,
              children: widget.foods
                  .map((e) => RichText(
                        text: TextSpan(
                          text: 'Hello ',
                          style: DefaultTextStyle.of(context).style,
                          children: <TextSpan>[
                            TextSpan(
                              text: '*',
                              style: TextStyle(color: Colors.red),
                            ),
                          ],
                        ),
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
