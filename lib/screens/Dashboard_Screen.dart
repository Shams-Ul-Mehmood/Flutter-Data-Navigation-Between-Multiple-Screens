import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget
{
  var userNameFromLoginScreen;
  DashboardScreen( this.userNameFromLoginScreen );

  @override
  Widget build(BuildContext buildContext)
  {
    return Scaffold(
        primary: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          primary: true,
          backgroundColor: Colors.black87,
          titleSpacing: 9,
          centerTitle: true,
          elevation: 10,
          shadowColor: Colors.grey,
          title: Text("Dashboard Screen", softWrap: true, style: TextStyle( color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold ),),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text("Welcome, ${userNameFromLoginScreen} ", style: TextStyle( color: Colors.black87, fontSize: 30, fontWeight: FontWeight.bold ),)),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.pop(buildContext);
            }, child: Text("Back", style: TextStyle( color: Colors.black87, fontSize: 25, fontWeight: FontWeight.bold ),),),
            ],
        ),

    );
  }
}