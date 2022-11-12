import 'dart:async';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';
import 'package:project1/Gridviewcustom.dart';
import 'package:project1/bottom.dart';
import 'package:project1/bottomsheet.dart';
import 'package:project1/cardhome.dart';
import 'package:project1/carousslider.dart';
import 'package:project1/checkbox.dart';
import 'package:project1/checkboxdemo.dart';
import 'package:project1/entryscreen.dart';
import 'package:project1/expansiontail.dart';
import 'package:project1/fixedappbar.dart';
import 'package:project1/gridview.dart';
import 'package:project1/homepage.dart';
import 'package:project1/homepage1.dart';
import 'package:project1/inkwell.dart';
import 'package:project1/listviewbuilder.dart';
import 'package:project1/listviewwithseperated.dart';
import 'package:project1/lottie.dart';
import 'package:project1/mainscreen.dart';
import 'package:project1/movies.dart';
import 'package:project1/normalgridview.dart';
import 'package:project1/profile.dart';
import 'package:project1/room.dart';
import 'package:project1/signup.dart';
import 'package:project1/login.dart';
import 'package:project1/stack.dart';
import 'package:project1/staggerdassi.dart';
import 'package:project1/staggerdgridview.dart';
import 'package:project1/tabbar.dart';
import 'package:project1/tabl.dart';
import 'package:project1/validation.dart';
import 'package:project1/whatsuppui.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: Splash(),
    );
  }
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
          context, MaterialPageRoute(builder: (context) => room()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/backgroundimage.jpg"),
        )),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              // Image.asset('assets/images/phone.png'),//fetching image
              Image(
                image: AssetImage('assets/images/study.png'),
                height: 50,
                width: 50,
              ),
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
