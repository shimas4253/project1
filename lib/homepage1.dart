import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';

class homepage1 extends StatelessWidget {
  const homepage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Theme(
          data: Theme.of(context).copyWith(),
          child: Drawer(
            child: ListView(
              children: <Widget>[
                UserAccountsDrawerHeader(
                  otherAccountsPictures: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Text('milly'),
                    )
                  ],
                  decoration: BoxDecoration(color: Colors.deepPurple),
                  accountName: Text('Nilesh Rathood'),
                  accountEmail: Text('Nilesh Rathood@gmail.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Text('Nilu'),
                  ),
                ),
                ListTile(
                  leading: Text('Home'),
                  trailing: Icon(Icons.gpp_maybe_outlined),
                ),
                Divider(
                  thickness: 3,
                ),
                ListTile(
                  leading: Text('Profile'),
                  trailing: Icon(Icons.account_circle_outlined),
                ),
                Divider(
                  thickness: 3,
                ),
                ListTile(
                  leading: Text('Tab Layout'),
                  trailing: Icon(Icons.account_circle_outlined),
                ),
                Divider(
                  thickness: 3,
                ),
                ListTile(
                  leading: Text('Commen view demo'),
                  trailing: Icon(Icons.account_circle_outlined),
                ),
                Divider(
                  thickness: 3,
                ),
                ListTile(
                  onTap: () {
                    QuickAlert.show(
                      context: context,
                      type: QuickAlertType.error,
                      title: 'Oops...',
                      text: 'Sorry, something went wrong',
                    );
                  },
                  leading: Text('close'),
                  trailing: Icon(Icons.close),
                )
              ],
            ),
          )),
    );
  }
}
