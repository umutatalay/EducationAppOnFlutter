import 'package:flutter/material.dart';
import 'package:zenginfalan/Categories.dart';
import 'package:zenginfalan/DersIcerik.dart';
import 'package:zenginfalan/Lessons.dart';
import 'package:zenginfalan/LoginScreen.dart';
import 'package:zenginfalan/Register.dart';
import 'package:zenginfalan/UserScreen.dart';
import 'package:zenginfalan/WelcomeScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'content.dart';
void main () async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
String CatName='bos';
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
        Categories.id: (context) => Categories(),
        LessonScreen.id: (context) => LessonScreen(),
        Content.id:(context)=>Content(),
        DersIcerik.id:(context)=>DersIcerik(),
      },
    );
  }
}
