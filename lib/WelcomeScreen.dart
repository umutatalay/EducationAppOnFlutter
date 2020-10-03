import 'package:flutter/material.dart';
// Burada Logo Giriş ve Kayıt ol butonları olacak
class WelcomeScreen extends StatefulWidget {
  static const String id='welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('selam')),
    );

  }
}
