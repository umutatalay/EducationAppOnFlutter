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
int sayac=1;

class _DersIcerikState extends State<DersIcerik> {
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:StreamBuilder(
          stream: FirebaseFirestore.instance.collection('$CatName').snapshots(),
          builder: (context, snapshot){
            if(!snapshot.hasData) return Text('Bekle');
            String img = snapshot.data.documents[DersId]['Content$sayac'];
            return Container(
              child: Column(
                children:  [
                  Text(DersAdi),
                  Image(
                    image: NetworkImage('$img'),
                  ),
                  Text(snapshot.data.documents[DersId]['Others'].toString()),
                  FlatButton(
                    color: Colors.red,
                    onPressed: (){
                      sayac++;
                      setState(() {


                      });
                    },
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

