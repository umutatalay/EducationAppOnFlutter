import 'package:flutter/cupertino.dart';
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
      setState(() {

      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(//Logonunüstü
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: <Widget>[
                TypewriterAnimatedTextKit(
                  text: ['coding ...','coding;','<coding>'],
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize:22.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Codelike',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 260.0,
            ),

             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ButtonTheme(
                    minWidth: 400.0,
                    height: 40.0,
                    child: RaisedButton(

                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.white)),
                      onPressed: () {
                        Navigator.pushNamed(context, LoginScreen.id);
                      },
                      color: Colors.redAccent,
                      textColor: Colors.white,
                      child: Text("GİRİŞ YAP",
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
                      ),
                    ),
                  ),
                ],
              ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ButtonTheme(
                    minWidth: 400.0,
                    height: 40.0,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.white)),
                      onPressed: () {
                        Navigator.pushNamed(context, RegisterScreen.id);
                      },
                      color: Colors.white,
                      textColor: Colors.redAccent,
                      child: Text("KAYIT OL",
                          style: TextStyle(fontSize: 22)),
                    ),
                  ),
                ],
              ),

          ],
        ),

    );

  }
}
