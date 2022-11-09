import 'package:flutter/material.dart';
import 'package:project1/entryscreen.dart';
import 'package:project1/main.dart';
import 'package:project1/signup.dart';
import 'package:project1/validation.dart';

void main(){
  runApp(
    MaterialApp(
       title: 'named routs',
      initialRoute: '/',
      routes: {
         '/':(context)=>Splash(),
        'entry':(context)=>entry(),
        'login':(context)=>validation(),
        'register':(context)=>signup()
      },

    )
  );
}