import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/signup.dart';
import 'package:project1/login.dart';

class entry extends StatelessWidget {
  const entry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 50),
            child: Text(
              'Hello There!',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Autamatically identity verification which enable you verify your identity',
              textAlign: TextAlign.center,
            ),
          ),
          Image(image: AssetImage('assets/images/profile.png')),
          Padding(
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => home()));
              },
              child: Text(
                'Login',
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  minimumSize: MaterialStateProperty.all(Size(350, 50))),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => signup()));
            },
            child: Text(
              'sign up',
              style: TextStyle(color: Colors.black),
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                minimumSize: MaterialStateProperty.all(Size(350, 50))),
          )
        ],
      ),
    ));
  }
}
