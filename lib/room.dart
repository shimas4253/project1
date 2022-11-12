import 'package:flutter/material.dart';

class room extends StatelessWidget {
  const room({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        actions: [Icon(Icons.favorite_border_outlined)],
        title: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Text(
            'Search your location',
            style: TextStyle(color: Colors.white),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size(80, 100),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                prefixIcon: Icon(Icons.search),
                hintText: 'enter your location',
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 20, left: 20),
            child: Container(
              height: 100,
              width: 500,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 80,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(8)),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Icon(
                              Icons.hotel,
                              color: Colors.white,
                            ),
                            Text(
                              'Hotel',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 80,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(8)),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Icon(
                              Icons.restaurant,
                              color: Colors.white,
                            ),
                            Text(
                              'Restaurant',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 80,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(8)),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Icon(
                              Icons.local_cafe,
                              color: Colors.white,
                            ),
                            Text(
                              'cafe',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Container(
              height: 300,
              width: 350,
              child: Card(
                child: Column(
                  children: [
                    Stack(children: [
                      Container(
                        height: 200,
                        width: 350,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://www.gannett-cdn.com/-mm-/05b227ad5b8ad4e9dcb53af4f31d7fbdb7fa901b/c=0-64-2119-1259/local/-/media/USATODAY/USATODAY/2014/08/13/1407953244000-177513283.jpg'),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 4,
                        top: 4,
                        child: Icon(
                          Icons.star_border,
                          color: Colors.white,
                        ),
                      ),
                      Positioned(
                        right: 3,
                        bottom: 10,
                        child: Container(
                          height: 30,
                          width: 40,
                          color: Colors.white,
                          child: Center(
                              child: Text(
                            '\$40',
                            style: TextStyle(fontSize: 15),
                          )),
                        ),
                      )
                    ]),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Awesome Room In kerala',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Kochi,Kerala',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            '(220 reviwes)',
                            style: TextStyle(color: Colors.grey),
                          ),
                        )
                      ],
                    )
                  ],
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
