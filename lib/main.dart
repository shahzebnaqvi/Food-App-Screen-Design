import 'package:flutter/material.dart';
import 'package:foodapp/home.dart';
import 'package:foodapp/shop.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Shop(),
    );
  }
}
