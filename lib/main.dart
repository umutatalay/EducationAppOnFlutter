import 'package:flutter/material.dart';
import 'package:zenginfalan/WelcomeScreen.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
    initialRoute:WelcomeScreen.id,
      routes: {
      WelcomeScreen.id:(context)=>WelcomeScreen(),
      },
    );
  }
}
