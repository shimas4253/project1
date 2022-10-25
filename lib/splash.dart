import 'package:flutter/material.dart';
import 'package:project1/signup.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    bool showpass = true;
    return Scaffold(
        appBar: AppBar(
          title: Text('LOGIN PAGE'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  'Login page',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.account_circle),
                      label: Text('username'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                      )),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: TextField(
                  obscureText: true,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                      label: Text('password'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: ElevatedButton(onPressed: () {}, child: Text("Login")),
              ),
              TextButton(
                  onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context)=>signup()));}, child: Text('not a user?register here'))
            ],
          ),
        ));
  }
}
