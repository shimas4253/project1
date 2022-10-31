import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project1/bottom.dart';
import 'package:project1/login.dart';
import 'package:project1/mainscreen.dart';
import 'package:project1/validation.dart';

class signup extends StatelessWidget {
  var formkey=GlobalKey<FormState>();
  TextEditingController pass=TextEditingController();
  TextEditingController cpass=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Form(
          key: formkey,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 40),
                child: Text(
                  'sign up',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                  'creat an account',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                ),
              ),
               Padding(
                padding: EdgeInsets.all(20.0),
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  validator: (text){
                    if(text!.isEmpty ||!text.contains('@gmail.com')){
                      return 'enter valid email';
                    }else{
                      return null;
                    }
                  }
                  ,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email,color: Colors.black87,),
                      label: Text('Email'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10),
                          ),
                      ),
                  ),
                ),
              ),
               Padding(
                padding: EdgeInsets.all(20.0),
                child: TextFormField(
                  controller: pass,
                  textInputAction: TextInputAction.next,
                  validator: (pass){
                    if(pass!.isEmpty||pass.length<6){
                      return 'password atleast contain 6';
                    }
               },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock,color: Colors.black87,),
                      label: Text('password'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
              ),
               Padding(
                padding: EdgeInsets.all(20.0),
                child: TextFormField(
                  controller: cpass,
                  textInputAction: TextInputAction.next,
                  validator: (password){
                    if(password!.isEmpty ||  password.length<6 || pass.text !=cpass.text){
                      return 'password atleast contain 6';
                    }
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock,color: Colors.black87,),
                      label: Text('confirm password'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  final valid=formkey.currentState!.validate();
                  if(valid){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>bottom()));
                  }else{
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: const Text('registration failed!'),
                        action: SnackBarAction(
                          label: 'undo',
                          onPressed: () {
                            // Code to execute.
                          },
                        ),
                      ),
                    );
                  }
                },
                child: Text(
                  'sign in',
                  style: TextStyle(color: Colors.black),
                ),
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    minimumSize: MaterialStateProperty.all(Size(350, 50))),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'already have an account',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>validation()));
                      },
                      child: Text('LOGIN',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black)))
                ],
              )
            ],
          ),
        ),

    );
  }
}
