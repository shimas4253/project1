import 'package:flutter/material.dart';
import 'package:project1/Camara.dart';
import 'package:project1/entryscreen.dart';
import 'package:project1/profile.dart';
import 'package:project1/signup.dart';
import 'package:project1/staggerdgridview.dart';

class tab extends StatelessWidget {
  const tab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('My Tab'),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              PopupMenuButton(itemBuilder: (context) {
                return [
                  PopupMenuItem(child: Text('settings')),
                  PopupMenuItem(child: Text('account')),
                  PopupMenuItem(child: Text('activity')),
                  PopupMenuItem(child: Text('help')),
                ];
              })
            ],
            backgroundColor: Color(0xFF004D40),
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.account_circle),
                  text: 'Account',
                ),
                Tab(
                  icon: Icon(Icons.home),
                  text: 'Home',
                ),
                Tab(
                  icon: Icon(Icons.alarm_on),
                  text: 'Alarm',
                ),
                Tab(
                  icon: Icon(
                    Icons.camera_alt,
                  ),
                  text: 'Camara',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              profile(),
              entry(),
              signup(),
              Camara(),
            ],
          ),
        ));
  }
}
