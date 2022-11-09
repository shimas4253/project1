import 'package:flutter/material.dart';

class inkwell extends StatefulWidget {
  const inkwell({Key? key}) : super(key: key);

  @override
  State<inkwell> createState() => _inkwellState();
}

class _inkwellState extends State<inkwell> {
  String inkwell = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('inkwell'),
        actions: <Widget>[
          Text(
            '',
            textScaleFactor: 3,
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
              onTap: () {
                setState(() {
                  inkwell = 'inkwell tapped';
                });
              },
              onLongPress: () {
                setState(() {
                  inkwell = 'inkwell long pressed';
                });
              },
              child: Container(
                color: Colors.greenAccent,
                height: 200,
                width: 200,
                child: Center(child: Text('inkwell')),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(inkwell),
            )
          ],
        ),
      ),
    );
  }
}
