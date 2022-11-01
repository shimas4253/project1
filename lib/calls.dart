import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class calls extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(itemBuilder:(BuildContext cntx,int index){
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.account_circle,color: Colors.black87,),
          ),
          title: Text('Name'),
          subtitle: Text('date,time'),
          trailing: Icon(Icons.videocam),

        );
      },
          separatorBuilder: (BuildContext cntx,int index){
        return Divider(thickness: 8,);
          },
          itemCount: 9),
    );
  }
}
