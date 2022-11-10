import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class carouse extends StatelessWidget {
  const carouse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carousi slide'),
      ),
      body: CarouselSlider(
        items: [
          Container(
              height: 30,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWWtyjN0SyjA2iZsjVeBDqg51OJCKKMOFAAg&usqp=CAU'),
                      fit: BoxFit.fill))),
          Container(
              height: 30,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWWtyjN0SyjA2iZsjVeBDqg51OJCKKMOFAAg&usqp=CAU'),
                      fit: BoxFit.fill))),
          Container(
              height: 30,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWWtyjN0SyjA2iZsjVeBDqg51OJCKKMOFAAg&usqp=CAU'),
                      fit: BoxFit.fill))),
          Container(
              height: 30,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWWtyjN0SyjA2iZsjVeBDqg51OJCKKMOFAAg&usqp=CAU'),
                      fit: BoxFit.fill))),
          Container(
              height: 30,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWWtyjN0SyjA2iZsjVeBDqg51OJCKKMOFAAg&usqp=CAU'),
                      fit: BoxFit.fill))),
          Container(
              height: 30,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWWtyjN0SyjA2iZsjVeBDqg51OJCKKMOFAAg&usqp=CAU'),
                      fit: BoxFit.fill))),
        ],
        options: CarouselOptions(
          height: 300,
          enlargeCenterPage: true,
          enableInfiniteScroll: true,
          autoPlay: true,
          autoPlayCurve: Curves.fastOutSlowIn,
          autoPlayAnimationDuration: Duration(seconds: 1),
          viewportFraction: 1,
        ),
      ),
    );
  }
}
