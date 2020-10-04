//balikl
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'rounded_button.dart';

class RegisterScreen extends StatefulWidget {
  static const String id = 'register_screen';

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Padding(
        padding: const EdgeInsets.all(70.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
                  hintText: 'Kullanıcı Adı Giriniz'),
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
              height: 8.0,
            ),
            TextField(
              obscureText: true,
              textAlign: TextAlign.center,
              decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Şifrenizi tekrar giriniz'),
            ),
            RoundedButton(
              title: 'Kayıt Ol',
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
