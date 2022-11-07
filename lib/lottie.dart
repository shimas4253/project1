import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class anim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // Load a Lottie file from your assets
          Lottie.network(
              'https://assets3.lottiefiles.com/packages/lf20_1irwf8ca.json'),

          // Load a Lottie file from a remote url
          Lottie.network(
              'https://assets4.lottiefiles.com/packages/lf20_YxLWmKCbpm.json'),

          // Load an animation and its images from a zip file
          Lottie.network(
              'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json'),
        ],
      ),
    );
  }
}
