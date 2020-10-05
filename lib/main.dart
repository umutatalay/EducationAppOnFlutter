import 'package:flutter/material.dart';
import 'package:zenginfalan/Categories.dart';
import 'package:zenginfalan/LoginScreen.dart';
import 'package:zenginfalan/Register.dart';
import 'package:zenginfalan/UserScreen.dart';
import 'package:zenginfalan/WelcomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
    initialRoute:WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegisterScreen.id: (context) => RegisterScreen(),
        Categories.id:(context)=>Categories(),
      },
    );
  }
}
