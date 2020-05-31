import 'package:flutter/material.dart';
import 'package:FlutterECommerce/screens/home_page.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter ECommerce',
      home: HomePage(),
    );
  }
}