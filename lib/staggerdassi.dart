

import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

var List0=[
  'https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/Colosseo_2020.jpg/1200px-Colosseo_2020.jpg',
  'https://res.cloudinary.com/dk-find-out/image/upload/q_80,w_1920,f_auto/MA_00891599_o3zx9k.jpg',
  'https://media.istockphoto.com/photos/rio-de-janeiro-aerial-picture-id534215078?s=612x612',
  'https://skift.com/wp-content/uploads/2022/06/GettyImages-1208049833-scaled-e1654782364566-1024x682.jpg',
  'https://images.unsplash.com/photo-1561577101-aa749bffbb70?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'
];
var List1=['Collosuem',
'Pyramid',
'Redeemer',
  'Taj mahal',
  'Chichen itza'
];
var List2=[
  '13/03/2002',
  '13/03/2002',
  '13/03/2002',
  '13/03/2002',
  '13/03/2002'
];
var cat=[
  'World wonder',
  'world wonder',
  'World worder',
  'World worder',
  'World wonder'
];

class google extends StatelessWidget {
   final List<StaggeredTile> cardtile=<StaggeredTile>[
     StaggeredTile.count(2, 2),
     StaggeredTile.count(2, 3),
     StaggeredTile.count(2, 2),
     StaggeredTile.count(2, 2),
     StaggeredTile.count(2, 2),
   ];
   final List<Widget> out=<Widget>[
     tile(bgimage: List0[0],
         bgtext: List1[0],
         cat: cat[0],
         date: List2[0]),
     tile(bgimage: List0[1], bgtext: List1[1], cat: cat[1], date: List2[1]),
     tile(bgimage: List0[2], bgtext: List1[2], cat: cat[2], date: List2[2]),
     tile(bgimage: List0[3], bgtext: List1[3], cat: cat[3], date: List2[3]),
     tile(bgimage: List0[4], bgtext: List1[4], cat: cat[4], date: List2[3])
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: StaggeredGridView.count(crossAxisCount: 4,
    crossAxisSpacing: 4,
    mainAxisSpacing: 4,
    staggeredTiles: cardtile,
    children:out
    ),
    );
  }
}
class tile extends StatelessWidget{
   final String bgimage;
   final String bgtext;
   final String date;
   final String cat;
   tile({required this.bgimage,required this.bgtext,required this.cat,required this.date});
  @override
  Widget build(BuildContext context) {
   return Card(
     child: Column(
       children: [
         Image(image: NetworkImage(bgimage)),
         Text(bgtext),
         Text(date),
         Text(cat)
       ],
     ),

   );
  }

}

