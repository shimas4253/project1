import 'package:flutter/material.dart';

class room extends StatelessWidget {
  const room({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        actions: [Icon(Icons.favorite)],
        title: Text('Search your location'),
        bottom: PreferredSize(
          preferredSize: Size(80, 40),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration:
              InputDecoration(
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                  prefixIcon: Icon(Icons.search),
                  hintText: 'enter your location',
                fillColor: Colors.white
              ),
            ),
          ),
        ),
      ),
    );
  }
}
