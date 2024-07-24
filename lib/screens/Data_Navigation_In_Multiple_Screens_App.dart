import 'package:flutter/material.dart';

import 'Login_Screen.dart';
import 'Splash_Screen.dart';

class Data_Navigation_In_Multiple_Screens_App extends StatelessWidget
{
  @override
  Widget build(BuildContext buildContext)
  {
    return MaterialApp(
        title: "Multiple Screens Data Sharing Application",
        color: Colors.indigoAccent,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        brightness: Brightness.light,
    ),
    initialRoute: "/",
    routes: {
      "/Splash": (buildContext) => SplashScreen(),
      "/Login": (buildContext) => LoginScreen(),
    },
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
          brightness: Brightness.light
      ),
     home: SplashScreen(),
  );
  }
}