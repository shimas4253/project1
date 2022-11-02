import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class customgrid extends StatelessWidget {
   var images=['https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcYLo5mt3LaMV4zkRHNr5NTvuGKKox9O0__9sy7-SGwxRccinJ_rxHr5O3FFKeOlnQ1dY&usqp=CAU',
   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcYLo5mt3LaMV4zkRHNr5NTvuGKKox9O0__9sy7-SGwxRccinJ_rxHr5O3FFKeOlnQ1dY&usqp=CAU',
   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcYLo5mt3LaMV4zkRHNr5NTvuGKKox9O0__9sy7-SGwxRccinJ_rxHr5O3FFKeOlnQ1dY&usqp=CAU',
   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcYLo5mt3LaMV4zkRHNr5NTvuGKKox9O0__9sy7-SGwxRccinJ_rxHr5O3FFKeOlnQ1dY&usqp=CAU',
   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcYLo5mt3LaMV4zkRHNr5NTvuGKKox9O0__9sy7-SGwxRccinJ_rxHr5O3FFKeOlnQ1dY&usqp=CAU',
   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcYLo5mt3LaMV4zkRHNr5NTvuGKKox9O0__9sy7-SGwxRccinJ_rxHr5O3FFKeOlnQ1dY&usqp=CAU',
   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcYLo5mt3LaMV4zkRHNr5NTvuGKKox9O0__9sy7-SGwxRccinJ_rxHr5O3FFKeOlnQ1dY&usqp=CAU',
   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcYLo5mt3LaMV4zkRHNr5NTvuGKKox9O0__9sy7-SGwxRccinJ_rxHr5O3FFKeOlnQ1dY&usqp=CAU',
   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcYLo5mt3LaMV4zkRHNr5NTvuGKKox9O0__9sy7-SGwxRccinJ_rxHr5O3FFKeOlnQ1dY&usqp=CAU',
   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcYLo5mt3LaMV4zkRHNr5NTvuGKKox9O0__9sy7-SGwxRccinJ_rxHr5O3FFKeOlnQ1dY&usqp=CAU',
   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcYLo5mt3LaMV4zkRHNr5NTvuGKKox9O0__9sy7-SGwxRccinJ_rxHr5O3FFKeOlnQ1dY&usqp=CAU',
   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcYLo5mt3LaMV4zkRHNr5NTvuGKKox9O0__9sy7-SGwxRccinJ_rxHr5O3FFKeOlnQ1dY&usqp=CAU'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('flutter'),
      ),
      body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 20,
        
      ),
          childrenDelegate: SliverChildBuilderDelegate(
              (context,index){
                return Image(image: NetworkImage(images[index]),
                width: 30,
                  height: 30,
                );
              },
              childCount: images.length,
          ),
      padding: EdgeInsets.all(20),
        shrinkWrap: true,
      ),
    );
  }
}
