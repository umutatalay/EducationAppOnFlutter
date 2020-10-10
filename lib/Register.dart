//balikl
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:zenginfalan/Categories.dart';
import 'constants.dart';


class RegisterScreen extends StatefulWidget {
  static const String id = 'register_screen';


  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _auth = FirebaseAuth.instance;
  final _firestore=FirebaseFirestore.instance;
  String email;
  String password;
  String Name;
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
              labelText: 'E Posta adresi',
              labelStyle: kTextFont,



              //hintText: 'Kullanıcı adınızı giriniz',
            ),
            onChanged: (value){
              email = value;
            },
          ),
          SizedBox(
            height: 8.0,
          ),
          TextField(
            style: TextStyle(
              color:Colors.white,
            ),
            textAlign: TextAlign.center,
            decoration: kTextFieldDecoration.copyWith(
              labelText: 'İsim Soyad',
              labelStyle: kTextFont,


              //hintText: 'Kullanıcı adınızı giriniz',
            ),
            onChanged: (value){
              Name=value;
            },
          ),
          SizedBox(
            height: 8.0,
          ),
          TextField(
            style: TextStyle(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
            decoration: kTextFieldDecoration.copyWith(
              labelText: 'Parola',
              labelStyle: kTextFont,


              //hintText: 'Kullanıcı adınızı giriniz',
            ),
            onChanged: (value){
              password=value;
            },
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
                labelText: 'Tekrar Parola',
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
              onPressed: () async{
                try{
                  final newUser= await _auth.createUserWithEmailAndPassword(email: email, password: password);
                 // final newKullanici=await _firestore.
                  if(newUser!=null){
                    Navigator.pushNamed(context, Categories.id);
                  }
                }
                catch(e){
                  print(e);
                }
              },
              child: Text(
                "Kayıt ol".toUpperCase(),
                style: TextStyle(
                  fontSize: 22, fontWeight: FontWeight.w800,
                ),
              ),

            ),
          ),
        ],
      ),
    );
  }
}
