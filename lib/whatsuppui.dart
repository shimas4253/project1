import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/Camara.dart';
import 'package:project1/Chats.dart';
import 'package:project1/calls.dart';
import 'package:project1/status.dart';

class whatsupp extends StatefulWidget {
  @override
  State<whatsupp> createState() => _whatsuppState();
}

class _whatsuppState extends State<whatsupp> {
  var page = [Camara(), chat(), status(), calls()];
  var selectindex = 0;

  void onitemtap(int index) {
    setState(() {
      selectindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.search), Icon(Icons.more_vert)],
        backgroundColor: Colors.teal,
        title: Text(
          "Whatsup",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: page.elementAt(selectindex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white38,
        backgroundColor: Colors.teal,
        currentIndex: selectindex,
        onTap: onitemtap,
        items: [
          (BottomNavigationBarItem(
              label: 'Camara',
              icon: Icon(
                Icons.camera_alt,
              ))),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat,
            ),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.history,
              ),
              label: 'Status'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.call,
              ),
              label: 'Call')
        ],
      ),
    );
  }
}
