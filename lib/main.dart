import 'package:flutter/material.dart';
import 'package:tuvi_booking/pages/new_order.dart';
import 'package:tuvi_booking/pages/order.dart';
import 'package:tuvi_booking/pages/settings.dart';
import 'package:tuvi_booking/pages/table.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int _selectedIndex = 0;
  List pages = [
    NewOrderPage(),
    TablePage(),
    OrderPage(),
    SettingsPage(),
  ];

  List titles = ['Đơn hàng mới', 'Bàn đã gọi món', 'Gọi món nhanh', 'Cài đặt'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titles[_selectedIndex]),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: pages[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 5,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.add_alert_sharp),
            label: "Đơn hàng",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.table_chart_outlined),
            label: "Bàn",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.emoji_food_beverage_rounded),
            label: "Gọi món",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Cài đặt",
          ),
        ],
      ),
    );
  }

  void _onItemTapped(index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
