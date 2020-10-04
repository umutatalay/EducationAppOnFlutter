import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/animation.dart';


// Burada Logo Giriş ve Kayıt ol butonları olacak
class WelcomeScreen extends StatefulWidget {
  static const String id='welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin{
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
      print(controller.value);

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
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 70.0),
                    child: Row(
                      children: <Widget>[
                        TypewriterAnimatedTextKit(
                          text: ['coding ...','coding;','<coding>'],
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize:26.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Codelike',
                          ),

                        ),


                      ],
                    ),
                  ),
                  SizedBox(
                    height: 260.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 90.0),
                    child: Row(
                      children: <Widget>[
                        ButtonTheme(
                          minWidth: 225.0,
                          height: 43.0,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.white)),
                            onPressed: () {},
                            color: Colors.redAccent,
                            textColor: Colors.white,
                            child: Text("GİRİŞ YAP",
                                style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),


                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 0.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 90.0),
                    child: Row(
                      children: <Widget>[
                        ButtonTheme(
                          minWidth: 225.0,
                          height: 43.0,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.white)),
                            onPressed: () {},
                            color: Colors.white,
                            textColor: Colors.red,
                            child: Text(" Kayıt Ol ".toUpperCase(),
                                style: TextStyle(fontSize: 20,color: Colors.red)),
                          ),
                        ),
                      ],
                    ),
                  ),


                ],
              ),





    );

  }
}
