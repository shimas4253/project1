import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class checkbox extends StatefulWidget {
  @override
  State<checkbox> createState() => _checkboxState();
}

class _checkboxState extends State<checkbox> {
  bool ischecked = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Checkbox(
              value: ischecked,
              onChanged: (bool? value) {
                setState(() {
                  ischecked = value!;
                });
              })
        ],
      ),
    );
  }
}
