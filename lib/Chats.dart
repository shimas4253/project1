import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: 9,
        itemBuilder: (BuildContext cntx, int index) {
          return ListTile(
            trailing: CircleAvatar(
              backgroundColor: Colors.teal,
              radius: 8,
              child: Text(
                '1',
                style: TextStyle(fontStyle: FontStyle.normal),
              ),
            ),
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.account_circle,
                color: Colors.black87,
              ),
            ),
            title: Text('chat 1'),
            subtitle: Text('last message'),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            thickness: 3,
          );
        },
      ),
    );
  }
}
