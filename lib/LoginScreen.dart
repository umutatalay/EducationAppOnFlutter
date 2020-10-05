//balik

//RENKLERİ DÜZENLERİZ GÖRMEK İÇİN BÖYLE YAPTIM ŞİMDİLİK
import 'package:zenginfalan/Categories.dart';
import 'package:zenginfalan/UserScreen.dart';

import 'rounded_button.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          Flexible(
            child: TypewriterAnimatedTextKit(
              text: ['coding ...', 'coding;', '<coding>'],
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Codelike',
              ),
            ),
          ),
          Flexible(
            child: SizedBox(
              height: 200.0,
            ),
          ),
          TextField(
            style: TextStyle(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
            decoration: kTextFieldDecoration.copyWith(
              labelText: 'Kullanıcı Adı',
                labelStyle: kTextFont,


              //hintText: 'Kullanıcı adınızı giriniz',
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          TextField(
            style: TextStyle(
              color: Colors.white,
            ),
            obscureText: true,
            textAlign: TextAlign.center,
            decoration:
            kTextFieldDecoration.copyWith(
                labelText: 'Parola',
              labelStyle: kTextFont,

            ),
          ),
          SizedBox(
            height: 24.0,
          ),
          ButtonTheme(
            minWidth: 375.0,
            height: 40.0,

            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.red)),
              color: Colors.white,
              textColor: Colors.red,
              padding: EdgeInsets.all(8.0),
              onPressed: () {
                Navigator.pushNamed(context, Categories.id);
              },
              child: Text(
                "GİRİŞ YAP",
                style: TextStyle(
                  fontSize: 22.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
