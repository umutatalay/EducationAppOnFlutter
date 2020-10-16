import 'main.dart';
import 'package:flutter/material.dart';
import 'Lessons.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:zenginfalan/Lessons.dart';
class Content extends StatefulWidget {
  static const String id = 'Content';
  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: UserInformation(),
    );
  }
}


String text;

class UserInformation extends StatelessWidget {


  String veriler='';
  @override
  Widget build(BuildContext context) {

    CollectionReference users =
      FirebaseFirestore.instance.collection('$CatName');
    //Stream collectionStream = FirebaseFirestore.instance.collection('CatName').snapshots();
//    Stream documentStream = FirebaseFirestore.instance.collection('CatName').doc('DersId').snapshots();

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
            if(DersId==users.doc('$CatName')){
              print('object');
            }


              text = document.data()['Content'].toString();
            print(text);

          }).toList(),


        );

        return Center(child: Text('ss'));
      },
    );
  }
}