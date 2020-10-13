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
      backgroundColor: Colors.red,
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
          backgroundColor: Colors.red,
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
        backgroundColor: Colors.red,
      body: Column(
        children: [
          Center(
            child: Container(
              child: Column(
                children: [
                  for (var b in liste)
                    InkWell(
                      onTap: () {
                        // liste.clear();
                        // CatName='HTML';
                        // Navigator.pushNamed(context, LessonScreen.id);
                      },
                      child: Container(
                        height: 100.0,
                        width: 400.0,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12.0),
                              topRight: Radius.circular(12.0),
                              bottomLeft: Radius.circular(12.0),
                              bottomRight: Radius.circular(12.0),
                            )),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  b.toString(),
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios),
                          ],
                        ),
                      ),
                    ),
                  SizedBox(
                    height: 50.0,
                  ),
                ],
              ),
              ),
            ),
          ],
        ),
      );
  }
}

