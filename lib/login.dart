import 'package:flutter/material.dart';
import 'package:project1/signup.dart';
import 'package:project1/validation.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  bool hidpass=true;
  @override
  Widget build(BuildContext context) {
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
                      prefixIcon: Icon(Icons.account_circle,color: Colors.black87,),
                      label: Text('username'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                      )),
                ),
              ),
               Padding(
                padding: EdgeInsets.all(15.0),
                child: TextField(
                  obscureText: hidpass,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: (){
                        setState((){
                          if(hidpass){
                            hidpass=false;
                          }else{
                            hidpass=true;
                          }
                        });
                      },
                      icon: hidpass ? Icon(Icons.visibility) : Icon(Icons.visibility_off)
                    ),
                    prefixIcon:Icon(Icons.lock,color: Colors.black87,) ,
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
                  onPressed: () {Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>validation()));}, child: Text('not a user?register here'))
            ],
          ),
        ));
  }
}
