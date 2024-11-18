import 'package:flutter/material.dart';
import 'dart:async';

import 'package:sample_firebase/view/login_screen/login_screen.dart';
// Import the login screen

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3))
        .then((value) => Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LoginScreen()),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue, // Set your preferred background color
      body: Center(
          child: CircleAvatar(
        radius: 100,
        child: Icon(
          Icons.person,
          size: 150,
        ),
      )),
    );
  }
}
