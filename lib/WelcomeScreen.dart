import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/animation.dart';
import 'package:zenginfalan/LoginScreen.dart';
import 'package:zenginfalan/Register.dart';

// Burada Logo Giriş ve Kayıt ol butonları olacak
class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;

  @override
  void initState() {

    // TODO: implement initState
    super.initState();
    controller= AnimationController(
      duration: Duration(seconds: 3),
      vsync: this,
    );
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Padding(
        padding:EdgeInsets.symmetric(horizontal: 40.0),
        child:Column(
          children: <Widget>[
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: <Widget>[
                TypewriterAnimatedTextKit(
                  text: ['coding ...','coding;','<coding>'],
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontSize:22.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Codelike',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 60.0,
            ),
            Row(
              children: <Widget>[
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.black)),
                  onPressed: () {
                    Navigator.pushNamed(context, LoginScreen.id);
                  },
                  color: Colors.lightBlueAccent,
                  textColor: Colors.white,
                  child: Text("Giriş Yap".toUpperCase(),
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.black)),
                  onPressed: () {
                    Navigator.pushNamed(context, RegisterScreen.id);
                  },
                  color: Colors.lightBlueAccent,
                  textColor: Colors.white,
                  child: Text("Kayıt Ol".toUpperCase(),
                      style: TextStyle(fontSize: 22)),
                ),
              ],
            ),


          ],
        )

      )
    );

  }
}
