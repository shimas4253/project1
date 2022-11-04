import 'package:flutter/material.dart';

class fixe extends StatefulWidget {
  @override
  State<fixe> createState() => _fixeState();
}

class _fixeState extends State<fixe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.deepPurpleAccent,
            floating: true,
            pinned: true,
            title: Text('floating app bar'),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
              IconButton(onPressed: () {}, icon: Icon(Icons.favorite))
            ],
            bottom: AppBar(
              backgroundColor: Colors.deepPurpleAccent,
              title: Container(
                width: double.infinity,
                height: 40,
                color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Search here',
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.camera_alt)),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            SizedBox(
              height: 500,
              child: Center(child: Text('SHOP HERE')),
            ),
            Container(
              color: Colors.amber,
              height: 500,
              child: Center(child: Text('scroll away')),
            )
          ]))
        ],
      ),
    );
  }
}
