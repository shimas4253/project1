import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project1/entryscreen.dart';
import 'package:project1/signup.dart';
import 'package:project1/login.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.red),
    home: Splash(),
  ));
}

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => entry()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
              "assets/images/backgroundimage.jpg"),
        )),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              // Image.asset('assets/images/phone.png'),//fetching image
              Image(image: AssetImage('assets/images/study.png'),height: 50,width: 50,),
              Text(
                'Myapp',
                style: TextStyle(fontSize: 40, color: Colors.black),
              )
            ],
          ),
        ),
      ),
    );
  }
}
