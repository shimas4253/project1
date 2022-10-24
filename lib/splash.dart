import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('LOGIN PAGE'),),
      body:SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
           padding: EdgeInsets.only(top: 20),
              child: Text('Login page',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                
                decoration: InputDecoration(
                  label: Text('username'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  )
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  label: Text('username'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  )
              ),
              ),),

            Padding(
              padding: const EdgeInsets.only(top: 20,bottom: 20),
              child: ElevatedButton(onPressed: (){}, child: Text("Login")),
            ),
            TextButton(onPressed: (){}, child:Text ('not a user?register here'))
          ],
        ),
      )
    );
  }

}


