import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project1/splash.dart';

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
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> home()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(
              "https://mir-s3-cdn-cf.behance.net/project_modules/disp/496ecb14589707.562865d064f9e.png"),
        )),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              // Image.asset('assets/images/phone.png'),//fetching image
              Image(image: AssetImage('assets/images/phone.png')),
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
