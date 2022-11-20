import 'package:flutter/material.dart';
import 'package:project1/entrypage.dart';

class pdetail extends StatelessWidget {
  const pdetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pId=ModalRoute.of(context)?.settings.arguments;
    final values=productsl.firstWhere((element) => element['Id']==pId);
    return Scaffold(
      appBar: AppBar(
        title: Text(values['name']),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(

                      image: NetworkImage(values['image']))
              ),
            ),

            Text('description: ${values['description']}'),
            SizedBox(
                width: 120,
                height: 40,
                child: ElevatedButton(onPressed: (){}, child: Row(children: [Icon(Icons.shopping_cart_rounded),Text('Buy Now')],)))

          ],
        ),
      ),
    );
  }
}
