import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Camara extends StatelessWidget {
  const Camara({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center(
        child: Card(
          elevation: 20,
          child: SizedBox(
            height: 100,
            width: 200,
            child: Center(child: Text('Take a photo')),
          ),
        ),
      ),
    );
  }
}
