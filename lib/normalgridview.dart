import 'package:flutter/material.dart';

class normalgrid extends StatelessWidget {
  var movie = [
    'https://m.media-amazon.com/images/M/MV5BZmJjM2YzOWEtOTYxYi00YjhkLTliMzgtMTA2MTc0NDQ1MDM4XkEyXkFqcGdeQXVyODY5OTk4MA@@._V1_UX67_CR0,0,67,98_AL_.jpg',
    'https://m.media-amazon.com/images/M/MV5BODcyZmVkYTQtYjRkYS00MDdhLWIyOGYtYTdkNGU2NzYxZmZkXkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_UY98_CR1,0,67,98_AL_.jpg',
    'https://m.media-amazon.com/images/M/MV5BMDgxOGYxNDQtZTE5Ny00NGY3LTg5Y2QtMWNkNjk0ZmE1NjdlXkEyXkFqcGdeQXVyMDA4NzMyOA@@._V1_UX67_CR0,0,67,98_AL_.jpg',
    'https://m.media-amazon.com/images/M/MV5BN2E4YWJjMTUtMzk0MS00Njk5LWE0MGUtNTA5Nzk2YTZhNTI4XkEyXkFqcGdeQXVyMjk5OTQ4ODM@._V1_UY98_CR15,0,67,98_AL_.jpg',
    'https://m.media-amazon.com/images/M/MV5BMDVkMDRkMzItN2EyYS00ZTI5LTljYzgtNzRmZDQ0OTQ3M2VjXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_UX67_CR0,0,67,98_AL_.jpg',
    'https://m.media-amazon.com/images/M/MV5BMDg5N2U5Y2EtNTU4NC00YTRiLWFiYmItZWM2MDJkMGI5NzcwXkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_UY98_CR5,0,67,98_AL_.jpg',
    'https://m.media-amazon.com/images/M/MV5BMjY0NWFmNzUtMDUzMC00MTY2LWIzOWMtM2MxNGZiNTk3NzgzXkEyXkFqcGdeQXVyMTEzMTI1Mjk3._V1_UY98_CR5,0,67,98_AL_.jpg',
    'https://m.media-amazon.com/images/M/MV5BNTZmMjEzYTktNGQ0Zi00N2RjLTliMGYtYzU2NzAyNDNkZTI4XkEyXkFqcGdeQXVyNjU0NTI0Nw@@._V1_UX67_CR0,0,67,98_AL_.jpg',
    'https://m.media-amazon.com/images/M/MV5BYWMwMDFlNmUtYWIxZC00ZTdjLWE2ZjctMzdjM2NmMmYyOWZlXkEyXkFqcGdeQXVyNTY5NzI0OQ@@._V1_UY98_CR0,0,67,98_AL_.jpg',
    'https://m.media-amazon.com/images/M/MV5BNWMyMzU2OTUtMDNjYi00YTMxLThkMGMtNmYwZDIxMjZlYTE0XkEyXkFqcGdeQXVyNjE5NTc1ODg@._V1_UX67_CR0,0,67,98_AL_.jpg'
        'https://m.media-amazon.com/images/M/MV5BZmJjM2YzOWEtOTYxYi00YjhkLTliMzgtMTA2MTc0NDQ1MDM4XkEyXkFqcGdeQXVyODY5OTk4MA@@._V1_UX67_CR0,0,67,98_AL_.jpg',
    'https://m.media-amazon.com/images/M/MV5BODcyZmVkYTQtYjRkYS00MDdhLWIyOGYtYTdkNGU2NzYxZmZkXkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_UY98_CR1,0,67,98_AL_.jpg',
    'https://m.media-amazon.com/images/M/MV5BMDgxOGYxNDQtZTE5Ny00NGY3LTg5Y2QtMWNkNjk0ZmE1NjdlXkEyXkFqcGdeQXVyMDA4NzMyOA@@._V1_UX67_CR0,0,67,98_AL_.jpg',
    'https://m.media-amazon.com/images/M/MV5BN2E4YWJjMTUtMzk0MS00Njk5LWE0MGUtNTA5Nzk2YTZhNTI4XkEyXkFqcGdeQXVyMjk5OTQ4ODM@._V1_UY98_CR15,0,67,98_AL_.jpg',
    'https://m.media-amazon.com/images/M/MV5BMDVkMDRkMzItN2EyYS00ZTI5LTljYzgtNzRmZDQ0OTQ3M2VjXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_UX67_CR0,0,67,98_AL_.jpg',
    'https://m.media-amazon.com/images/M/MV5BMDg5N2U5Y2EtNTU4NC00YTRiLWFiYmItZWM2MDJkMGI5NzcwXkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_UY98_CR5,0,67,98_AL_.jpg',
    'https://m.media-amazon.com/images/M/MV5BMjY0NWFmNzUtMDUzMC00MTY2LWIzOWMtM2MxNGZiNTk3NzgzXkEyXkFqcGdeQXVyMTEzMTI1Mjk3._V1_UY98_CR5,0,67,98_AL_.jpg',
    'https://m.media-amazon.com/images/M/MV5BNTZmMjEzYTktNGQ0Zi00N2RjLTliMGYtYzU2NzAyNDNkZTI4XkEyXkFqcGdeQXVyNjU0NTI0Nw@@._V1_UX67_CR0,0,67,98_AL_.jpg',
    'https://m.media-amazon.com/images/M/MV5BYWMwMDFlNmUtYWIxZC00ZTdjLWE2ZjctMzdjM2NmMmYyOWZlXkEyXkFqcGdeQXVyNTY5NzI0OQ@@._V1_UY98_CR0,0,67,98_AL_.jpg',
    'https://m.media-amazon.com/images/M/MV5BNWMyMzU2OTUtMDNjYi00YTMxLThkMGMtNmYwZDIxMjZlYTE0XkEyXkFqcGdeQXVyNjE5NTc1ODg@._V1_UX67_CR0,0,67,98_AL_.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid'),
      ),
      body: GridView(
        padding: EdgeInsets.all(20),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, mainAxisSpacing: 20, crossAxisSpacing: 20,),shrinkWrap:false,
        children: [
          Column(
            children: [
              Card(elevation: 30,

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                ),
                child: Image(image: NetworkImage(movie[0])),
              ),
              Text('Movie 1'),
            ],
          ),
          Card(elevation: 30,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
            ),
            child: Image(image: NetworkImage(movie[1])),
          ),
          Card(elevation: 30,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
            ),
            child: Image(image: NetworkImage(movie[2])),
          ),
          Card(elevation: 30,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
            ),
            child: Image(image: NetworkImage(movie[3])),

          ),
          Card(elevation: 30,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
            ),
            child: Image(image: NetworkImage(movie[4])),
          ),
          Card(elevation: 30,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
            ),
            child: Image(image: NetworkImage(movie[5])),
          ),
          Card(elevation: 30, shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
          ),
            child: Image(image: NetworkImage(movie[6])),
          ),
          Card(elevation: 30,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
            ),
            child: Image(image: NetworkImage(movie[7])),
          ),
          Card(elevation: 30,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
            ),
            child: Image(image: NetworkImage(movie[8])),
          ),
          Card(elevation: 30,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
            ),
            child: Image(image: NetworkImage(movie[9])),
          ),
          Card(elevation: 30,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
            ),
            child: Image(image: NetworkImage(movie[10])),
          ),
          Card(elevation: 30,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
            ),
            child: Image(image: NetworkImage(movie[11])),
          ),
          Card(elevation: 30,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
            ),
            child: Image(image: NetworkImage(movie[12])),
          ),
          Card(elevation: 30,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
            ),
            child: Image(image: NetworkImage(movie[13])),
          ),
          Card(elevation: 30,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
            ),
            child: Image(image: NetworkImage(movie[14])),
          ),
          Card(elevation: 30,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
            ),
            child: Image(image: NetworkImage(movie[15])),
          ),
          Card(elevation: 30,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
            ),
            child: Image(image: NetworkImage(movie[16])),
          ),
          Card(elevation: 30,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
            ),
            child: Image(image: NetworkImage(movie[17])),
          ),
          Card(elevation: 30,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
            ),
            child: Image(image: NetworkImage(movie[8])),
          ),
          Card(elevation: 30,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
            ),
            child: Image(image: NetworkImage(movie[8])),
          ),
          Card(elevation: 30,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
            ),
            child: Image(image: NetworkImage(movie[8])),
          ),
          Card(elevation: 30,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
            ),
            child: Image(image: NetworkImage(movie[8])),
          ),
        ],
      ),
    );
  }
}
