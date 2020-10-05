import 'package:flutter/material.dart';

class UserScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Center(child: Text('TEXT NAME AND SURNAME')),
    );
  }
}
