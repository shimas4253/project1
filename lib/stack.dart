import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class stack extends StatelessWidget {
  var names = ['USA', 'Englend', 'France', 'Russia', 'Canada'];
  var images = [
    'https://images.prismic.io/prospects-ac-uk/ae4c300bd3b20ffa7e75f0b6ef33f53ecfe5eba3_work-abroad-usa2.jpg?auto=compress,format',
    'https://images.pexels.com/photos/672532/pexels-photo-672532.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://upload.wikimedia.org/wikipedia/commons/e/e6/Eiffel_Tower_from_the_Tour_Montparnasse_3%2C_Paris_May_2014.jpg',
    'https://www.state.gov/wp-content/uploads/2018/11/Russia-2499x1406.jpg',
    'https://a.cdn-hotels.com/gdcs/production159/d204/01ae3fa0-c55c-11e8-9739-0242ac110006.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Gridviw'),
        ),
        body: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 1, mainAxisSpacing: 1),
            itemCount: images.length,
            itemBuilder: (BuildContext cntx, int index) {
              return Padding(
                padding: const EdgeInsets.all(5),
                child: Stack(children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: NetworkImage(images[index]),
                            fit: BoxFit.fill)),
                  ),
                  Positioned(
                      left: 5,
                      bottom: 5,
                      child: Text(
                        names[index],
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ))
                ]),
              );
            }));
  }
}
