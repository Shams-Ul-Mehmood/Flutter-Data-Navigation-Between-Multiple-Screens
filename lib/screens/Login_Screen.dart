import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'Dashboard_Screen.dart';

class LoginScreen extends StatefulWidget
{
  @override
  State<LoginScreen> createState()
  {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen>
{
  var userNameController = TextEditingController();
  final _form_Key = GlobalKey<FormState>();
  String userName = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext buildContext)
  {
    return Scaffold(
      primary: true,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Wrap(
                children: [
                  Container(
                    width: 900,
                    height: 400,
                    child: Image.asset("assets/pictures/login.jpg", fit: BoxFit.cover,),
                  ),
                ]
            ),
            SizedBox(height: 15,),
            Text("Login User $userName", style: TextStyle( fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black87 ),),
            SizedBox(height: 15,),
            Form(
              autovalidateMode: AutovalidateMode.always,
              key: _form_Key,
              child: Padding(
                padding: const EdgeInsets.symmetric( vertical: 15, horizontal: 15 ),
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      enabled: true,
                      enabledBorder: OutlineInputBorder(),
                      labelText: "Username",
                      hintText: "Username",
                      icon: Icon(Icons.person),
                      border: OutlineInputBorder(),
                    ),
                    autovalidateMode: AutovalidateMode.always,
                    enableInteractiveSelection: true,
                    enableSuggestions: true,
                    dragStartBehavior: DragStartBehavior.start,
                    textCapitalization: TextCapitalization.sentences,
                    spellCheckConfiguration: SpellCheckConfiguration(),
                    keyboardType: TextInputType.name,
                    scrollPhysics: ScrollPhysics(),
                    magnifierConfiguration: TextMagnifierConfiguration(),
                    selectionControls: MaterialTextSelectionControls(),
                    textDirection: TextDirection.ltr,
                    autofocus: true,
                    scribbleEnabled: true,
                    cursorOpacityAnimates: true,
                    enabled: true,
                    autocorrect: true,
                    showCursor: true,
                    smartQuotesType: SmartQuotesType.enabled,
                    clipBehavior: Clip.hardEdge,
                    enableIMEPersonalizedLearning: true,
                    onChanged: (value) {
                      userName = value;
                      setState((){});
                    },
                    validator: (value) {
                        if( value!.isEmpty )
                          {
                            return "Username is required";
                          }
                        return null;
                    },
                    controller: userNameController,
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    decoration: InputDecoration(
                      enabled: true,
                      enabledBorder: OutlineInputBorder(),
                      labelText: "Password",
                      hintText: "Password",
                      icon: Icon(Icons.lock_open_rounded),
                      border: OutlineInputBorder(),
                    ),
                    autovalidateMode: AutovalidateMode.always,
                    enableInteractiveSelection: true,
                    enableSuggestions: true,
                    dragStartBehavior: DragStartBehavior.start,
                    textCapitalization: TextCapitalization.sentences,
                    spellCheckConfiguration: SpellCheckConfiguration(),
                    keyboardType: TextInputType.name,
                    scrollPhysics: ScrollPhysics(),
                    magnifierConfiguration: TextMagnifierConfiguration(),
                    selectionControls: MaterialTextSelectionControls(),
                    textDirection: TextDirection.ltr,
                    autofocus: true,
                    scribbleEnabled: true,
                    cursorOpacityAnimates: true,
                    enabled: true,
                    autocorrect: true,
                    showCursor: true,
                    smartQuotesType: SmartQuotesType.enabled,
                    clipBehavior: Clip.hardEdge,
                    enableIMEPersonalizedLearning: true,
                    obscureText: true,
                    validator: (value){
                      if( value!.isEmpty )
                        {
                          return "Password is required";
                        }
                      else if( value.length < 5 )
                        {
                          return "Password should be at least 5 characters.";
                        }
                      return null;
                    },
                  ),
                  SizedBox(height: 10,),
                  InkWell(
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      child: changeButton? Icon( Icons.done_outline, color: Colors.white, ) : Text("Sign In", style: TextStyle( fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white ), ),
                      width: changeButton? 50 : 150,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular( changeButton? 20 : 8),
                        shape: BoxShape.rectangle,
                      ),
                    ),
                    onTap: () async {
                      if( _form_Key.currentState!.validate() )
                        {
                          // When we click on sign-in button to move into next screen.
                          setState(() {
                            changeButton = true;
                          });

                          await Future.delayed( Duration( seconds: 3 ) );
                          await Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardScreen( userNameController.text.toString() ) ));
                          // When we come back to login screen.
                          setState(() {
                            changeButton = false;
                          });
                        }
                    },
                  ),
                ],
                            ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}