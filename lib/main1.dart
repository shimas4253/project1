import 'package:flutter/material.dart';
import 'package:project1/productscreen.dart';
import 'package:project1/singleproductlist.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: product(),
      routes: {'product list': (context) => productscreen()},
    );
  }
}
