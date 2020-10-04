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
      backgroundColor: Colors.pink,
      body: Padding(
        padding: const EdgeInsets.all(70.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30.0,
            ),
            TypewriterAnimatedTextKit(
              text: ['coding ...', 'coding;', '<coding>'],
              textStyle: TextStyle(
                color: Colors.black,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Codelike',
              ),
            ),
            SizedBox(
              height: 200.0,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Kullanıcı adınızı giriniz'),
            ),
            SizedBox(
              height: 8.0,
            ),
            TextField(
              obscureText: true,
              textAlign: TextAlign.center,
              decoration:
                  kTextFieldDecoration.copyWith(hintText: 'Şifrenizi giriniz'),
            ),
            SizedBox(
              height: 24.0,
            ),
            RoundedButton(
              title: 'Log In',
              colour: Colors.lightBlueAccent,
              onPressed: () {
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
