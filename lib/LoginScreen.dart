//balik

//RENKLERİ DÜZENLERİZ GÖRMEK İÇİN BÖYLE YAPTIM ŞİMDİLİK
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
      backgroundColor: Colors.grey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[

          Flexible(
            child: TypewriterAnimatedTextKit(
              text: ['coding ...', 'coding;', '<coding>'],
              textStyle: TextStyle(
                color: Colors.white60,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Codelike',
              ),
            ),
          ),
          SizedBox(
            height: 200.0,
          ),
          TextField(
            textAlign: TextAlign.center,
            decoration: kTextFieldDecoration.copyWith(
              labelText: 'Kullanıcı Adı',
              labelStyle: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),


              //hintText: 'Kullanıcı adınızı giriniz',
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          TextField(
            obscureText: true,
            textAlign: TextAlign.center,
            decoration:
            kTextFieldDecoration.copyWith(
                labelText: 'Parola',
                labelStyle: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                )),
          ),
          SizedBox(
            height: 24.0,
          ),
          RoundedButton(
            title: 'Giriş Yap',
            colour: Colors.lightBlueAccent,
            onPressed: () {
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
