import 'main.dart';
import 'package:flutter/material.dart';
import 'Categories.dart';
import 'package:zenginfalan/Lessons.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class DersIcerik extends StatefulWidget {
  static const String id = 'DersIcerik';
  @override
  _DersIcerikState createState() => _DersIcerikState();
}

class _DersIcerikState extends State<DersIcerik> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:StreamBuilder(
          stream: FirebaseFirestore.instance.collection('$CatName').snapshots(),
          builder: (context, snapshot){
            if(!snapshot.hasData) return Text('Bekle');
            return Center(
              child: Column(
                children: <Widget>[
                  Center(child: Text(snapshot.data.documents[DersId]['Content'],)),
                  Center(child: Text(snapshot.data.documents[DersId]['Others'].toString())),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

