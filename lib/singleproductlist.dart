import 'package:flutter/material.dart';

List<Map<String, dynamic>> dummy = [
  {
    'Id': 1,
    'name': "product 1",
    'price': 100,
    'description': 'this is product 1'
  },
  {
    'Id': 2,
    'name': "product 2",
    'price': 200,
    'description': 'this is product 2'
  },
  {
    'Id': 3,
    'name': "product 3",
    'price': 300,
    'description': 'this is product 3'
  },
  {
    'Id': 4,
    'name': "product 4",
    'price': 400,
    'description': 'this is product 4'
  },
];

class product extends StatelessWidget {
  void _goToSingle(context, productId) {
    Navigator.of(context).pushNamed("product list", arguments: productId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('products'),
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: dummy.map((values) {
          return TextButton(
              onPressed: () => _goToSingle(context, values['Id']),
              child: Text(values['name']));
        }).toList(),
      ),
    );
  }
}
