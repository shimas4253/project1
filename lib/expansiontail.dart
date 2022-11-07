import 'package:flutter/material.dart';

class expntail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: ExpansionTile(
          title: Text('Colors'),
          subtitle: Text('click here to see more'),
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green,
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.red,
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.yellow,
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.orange,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
