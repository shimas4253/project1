import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bottom extends StatefulWidget {
  @override
  State<bottom> createState() => _bottomState();
}

class _bottomState extends State<bottom> {
  var pages = [
    Card(
      elevation: 10,
      color: Colors.white,
      child: Center(
          child: Text(
        'home page',
        style: TextStyle(color: Colors.black87),
      )),
    ),
    Card(
      elevation: 10,
      color: Colors.white,
      child: Center(
          child: Text(
        'search page',
        style: TextStyle(color: Colors.black87),
      )),
    ),
    Card(
      elevation: 10,
      color: Colors.white,
      child: Center(
          child: Text(
        'favorate',
        style: TextStyle(color: Colors.black87),
      )),
    ),
    Card(
      elevation: 10,
      color: Colors.white,
      child: Center(
          child: Text(
        'My account',
        style: TextStyle(color: Colors.black87),
      )),
    ),
  ];
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
        title: Text('Bottom bar'),
      ),
      body: Center(
        child: SizedBox(
          height: 100,
          width: 200,
          child: Center(child: pages.elementAt(selectindex)),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.black87,
        currentIndex: selectindex,
        onTap: onitemtap,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: 'serach'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
              ),
              label: 'favorite'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
              ),
              label: 'profile')
        ],
      ),
    );
  }
}
