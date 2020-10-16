import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:zenginfalan/DersIcerik.dart';
import 'package:zenginfalan/main.dart';
import 'content.dart';

var text;
class LessonScreen extends StatefulWidget {
  static const String id = 'lesson_screen';

  @override
  _LessonScreenState createState() => _LessonScreenState();
}
int DersId;
String DersAdi=' ';
class _LessonScreenState extends State<LessonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      body: Center(child: UserInformation()),
    );
  }
}
int sayac=0;
var liste = new List();
List<bool> listedurum = new List();
bool gordumu;
String deneme=' ';
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
            listedurum.add((document.data()['gordumu']));
            print(gordumu);

          }).toList(),
          

        );

        return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white70 ,

            body: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [

                    for (var b in liste)

                      InkWell(
                        onTap: () {
                          DersAdi=b.toString();
                          DersId=liste.indexOf(b);
                          deneme=FieldPath.documentId.toString();
                          print(liste);
                          //print('Selam');
                          //DersId=['Content'].toString();
                          Navigator.pushNamed(context,DersIcerik.id);

                          print(listedurum);
                          // liste.clear();
                          // CatName='HTML';
                          // Navigator.pushNamed(context, LessonScreen.id);
                        },
                        child: Padding(


                          padding: const EdgeInsets.all(8.0),
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
                                Flexible(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                  ('    '+b.toString()),
                                        // geçici
                                        style: TextStyle(
                                          fontSize: 25.0,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'KursAdi',
                                          color: Color.fromRGBO(113, 107, 143, 1),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: <Widget> [
                                    Row(
                                      children: [
                                        Icon(
                                        listedurum[liste.indexOf(b)]==true?Icons.check:Icons.clear,color: Colors.red,
                                        ),

                                        Icon(Icons.arrow_forward_ios),],
                                    )
                                  ],
                                )
                              ],
                            ),

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
          ),
        );
      },
    );
  }
}


