import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class listview extends StatelessWidget {
var names=<String>['shimas','Sathar','adhil'];
var colors=<int>[600,400,200];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('List',),),
      body: ListView.builder(
        itemCount: names.length,
          itemBuilder: (BuildContext cntx,int index){
        return Card(

          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomRight: Radius.circular(1))),
          color: Colors.red[colors[index]],
          child: Center(child: Text(names[index],style: TextStyle(fontSize: 50),),),
        );
      }),
    );
  }
}
