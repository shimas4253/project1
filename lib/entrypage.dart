import 'package:flutter/material.dart';

List<Map<String, dynamic>> productsl = [
  {
    'Id': 1,
    'name': "Earphone ",
    'price': 100,
    'description': 'this is a Earphone 1',
    'image':
        'https://www.pngitem.com/pimgs/m/99-994929_mobile-earphone-png-transparent-earphone-png-png-download.png'
  },
  {
    'Id': 2,
    'name': "shirts",
    'price': 200,
    'description': 'this is cotton shirt ',
    'image':
        'https://assets.myntassets.com/h_1440,q_100,w_1080/v1/assets/images/2164373/2017/11/15/11510749192975-Roadster-Men-Brown--Black-Regular-Fit-Checked-Casual-Shirt-8071510749192783-1.jpg'
  },
  {
    'Id': 3,
    'name': "cargos ",
    'price': 300,
    'description': 'this is a cargos pant',
    'image':
        'https://media.wired.com/photos/611c5312798f0e2c853b702f/125:94/w_1274,h_958,c_limit/Gear-Cargo-Pants-are-Back-1302952122.jpg'
  },
  {
    'Id': 4,
    'name': "cycle",
    'price': 400,
    'description': 'this is a mountain cycle',
    'image': 'https://m.media-amazon.com/images/I/61StKt0X+tS._SL1000_.jpg'
  },
];

class productslist extends StatelessWidget {
  const productslist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products List'),
      ),
      body: GridView(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          children: productsl.map((values) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .pushNamed('product detail', arguments: values['Id']);
              },
              child: Card(
                child: Column(
                  children: [
                    Container(
                        height: 150,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(values['image']),
                                fit: BoxFit.fill))),
                    Padding(
                      padding: const EdgeInsets.only(left: 1, right: 90),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            values['name'],
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(values['price'].toString())
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList()),
    );
  }
}
