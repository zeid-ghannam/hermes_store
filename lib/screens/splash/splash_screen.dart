import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hermes_store/screens/intro/welcome_screen.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  startTimeout() {
    return Timer(Duration(seconds: 5), handleTimeout);
  }

  void handleTimeout() {
    changeScreen();
  }

  changeScreen() async {
    Get.to(WelcomeScreen());
  }

  @override
  void initState() {
    super.initState();
    startTimeout();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/images/p1.jpg",
              height: 300.0,
              width: 300.0,
            ),
          ],
        ),
      ),
    );
  }
}
