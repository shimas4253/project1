import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class gridview extends StatelessWidget {
  var image = [
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
        title: Text('my grid'),
      ),
      body: GridView.builder(
          padding: EdgeInsets.all(20),
          itemCount: image.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
          ),
          itemBuilder: (BuildContext cntx, int index) {
            return Image.network(image[index]);
           // return Icon(Icons.account_circle);
          }),
    );
  }
}
