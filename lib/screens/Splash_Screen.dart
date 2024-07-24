import 'dart:async';

import 'package:flutter/material.dart';

import 'Login_Screen.dart';

class SplashScreen extends StatefulWidget
{
  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>
{
  @override
  void initState()
  {
    super.initState();
    Timer( Duration( seconds: 1 ), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
    }, );
  }

  @override
  Widget build(BuildContext buildContext)
  {
    return Scaffold(
      primary: true,
      backgroundColor: Colors.deepPurple,
      body: Center(child: Text("Splash Screen", style: TextStyle( fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white ),)),
    );
  }
}