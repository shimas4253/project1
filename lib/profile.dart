import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          actions: [
            Icon(Icons.more_vert),
          ],
          title: Text('Profile'),
        ),
        body: Container(
          height: double.infinity,
          width: 500,
          child: Stack(
            children: [
              Image(
                  image: NetworkImage(
                      'https://tmssl.akamaized.net/images/foto/galerie/david-beckham-manchester-united-1588407300-37505.jpg?lm=1588407315')),
              Positioned(
                left: 50,
                right: 50,
                top: 130,
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/images/beckacm.jpeg')),
                  ),
                ),
              ),
              Positioned(
                left: 10,
                right: 300,
                top: 195,
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.deepOrange,
                  child: Icon(
                    Icons.message,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                left: 300,
                right: 10,
                top: 195,
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                  left: 90,
                  top: 300,
                  child: Text(
                    'David Backham',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black87),
                  )),
              Positioned(
                  left: 140,
                  top: 340,
                  child: Text(
                    'model / footballer',
                    style: TextStyle(color: Colors.blue),
                  ))
            ],
          ),
        ));
  }
}
