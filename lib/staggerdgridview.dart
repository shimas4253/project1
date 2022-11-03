import 'dart:core';
import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';


class staggerd extends StatelessWidget {
  final List<StaggeredTile> cardTile = <StaggeredTile>[
    StaggeredTile.count(4, 1),
    StaggeredTile.count(3, 1),
    StaggeredTile.count(1, 4),
    StaggeredTile.count(2, 2),
    StaggeredTile.count(1, 3),
    StaggeredTile.count(2, 2),
    StaggeredTile.count(2, 2),
    StaggeredTile.count(2, 2),
    StaggeredTile.count(2, 1)
  ];
  final List<Widget> ListTile = <Widget>[
    bgtitle(
      iconData: Icons.home,
      bgcolor: Colors.red,
    ),
    bgtitle(
      iconData: Icons.home,
      bgcolor: Colors.blue,
    ),
    bgtitle(
      iconData: Icons.home,
      bgcolor: Colors.green,
    ),
    bgtitle(
      iconData: Icons.home,
      bgcolor: Colors.pink,
    ),
    bgtitle(
      iconData: Icons.home,
      bgcolor: Colors.black87,
    ),
    bgtitle(
      iconData: Icons.home,
      bgcolor: Colors.orange,
    ),
    bgtitle(
      iconData: Icons.home,
      bgcolor: Colors.teal,
    ),
    bgtitle(
      iconData: Icons.home,
      bgcolor: Colors.red,
    ),
    bgtitle(
      iconData: Icons.home,
      bgcolor: Colors.blue,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StaggeredGridView.count(
        crossAxisCount: 4,
        staggeredTiles: cardTile,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: ListTile,
      ),
    );
  }
}

class bgtitle extends StatelessWidget {
  final Color? bgcolor;
  final IconData iconData;

  bgtitle({this.bgcolor, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: bgcolor,
      child: Icon(iconData),
    );
  }
}
