import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class status extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          itemBuilder: (BuildContext cntx, int index) {
            return ListTile(
             title: Text('Name'),
              subtitle: Text('minutes ago'),
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.account_circle,
                  color: Colors.black87,
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext cntx, int index) {
            return Divider(
              thickness: 3,
            );
          },
          itemCount: 9),
    );
  }
}
