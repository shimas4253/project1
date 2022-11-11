import 'package:flutter/material.dart';
import 'package:project1/singleproductlist.dart';

class productscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)?.settings.arguments;
    final values = dummy.firstWhere((element) => element['Id'] == productId);
    return Scaffold(
      appBar: AppBar(
        title: Text(values['name']),
      ),
      body: Column(
        children: [
          Text("Name : ${values['name']}"),
          Text("Price : ${values['price'].toString()}"),
          Text("Discription : ${values['description']}")
        ],
      ),
    );
  }
}
