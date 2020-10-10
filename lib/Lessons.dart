import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class LessonScreen extends StatefulWidget {
  static const String id = 'lesson_screen';

  @override
  _LessonScreenState createState() => _LessonScreenState();
}

class _LessonScreenState extends State<LessonScreen> {
  var data;
  String yazi;
  final databaseReference = FirebaseDatabase.instance.reference();

  Future<String> readData() async {
    await databaseReference.once().then((DataSnapshot snapshot) async {
      data = await snapshot.value['Lessons'][0]['Lesson_Content'];
      print(data);
    });
    yazi = data.toString();
    return yazi;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readData();
    print(readData());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              'k',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
