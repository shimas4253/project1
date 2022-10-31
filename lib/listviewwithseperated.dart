import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class seperated extends StatelessWidget {
 var teams=<String>['real madrid','barcelona','chelsea'];
 var colors=<int>[600,300,100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my list'),
      ),
      body:ListView.separated(
          itemBuilder: (context,index){
            return Card(
              color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Text(teams[index]),
              ),
            );
          },
          separatorBuilder: (context,index){
            return Divider(thickness: 10,);
          },
          itemCount: teams.length) ,
    );
  }
}
