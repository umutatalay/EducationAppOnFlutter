import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:zenginfalan/main.dart';

var text;
class LessonScreen extends StatefulWidget {
  static const String id = 'lesson_screen';

  @override
  _LessonScreenState createState() => _LessonScreenState();
}

class _LessonScreenState extends State<LessonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Center(child: UserInformation()),
    );
  }
}

var liste = new List();

// ignore: must_be_immutable
class UserInformation extends StatelessWidget {

  String veriler='';
  @override
  Widget build(BuildContext context) {

    CollectionReference users =
    FirebaseFirestore.instance.collection('$CatName');


    return StreamBuilder<QuerySnapshot>(
      stream: users.snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text("Loading");
        }
        ListView(
          children: snapshot.data.docs.map((DocumentSnapshot document) {
            liste.add(document.id);
          }).toList(),

        );
       NewWidget();


        return Scaffold(
          body: NewWidget(),
        );
      },
    );
  }
}

class NewWidget extends StatelessWidget {

  @override

  Widget build(BuildContext context) {

      return Scaffold(
        body:
          Column(
            children: [
              Center(
                child: Container(
                  child: Column(
                    children: [for(var b in liste)Text(b.toString())],
                  ),
                ),

              ),
            Row(
              children: [
                Text(CatName.toString()),
              ],
            )
            ],
          ),



      );


  }
}

