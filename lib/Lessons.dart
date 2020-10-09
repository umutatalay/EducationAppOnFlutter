import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class LessonScreen extends StatefulWidget {
  static const String id = 'lesson_screen';

  @override
  _LessonScreenState createState() => _LessonScreenState();
}

class _LessonScreenState extends State<LessonScreen> {
  var data;
  final databaseReference = FirebaseDatabase.instance.reference();

  void readData() {
    databaseReference.once().then((DataSnapshot snapshot) {
      data = snapshot.value['mehmet'];
      print(data);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Center(
        child: FlatButton(
          color: Colors.green,
          onPressed: readData,
        ),
      ),
    );
  }
}
