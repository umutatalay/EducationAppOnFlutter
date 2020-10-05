import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  static const String id = 'Categories';
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 5.0,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12.0),
                  topRight: Radius.circular(12.0),
                  bottomLeft: Radius.circular(12.0),
                  bottomRight: Radius.circular(12.0),
                ),
              ),


              height: 50.0,
              child: Row(

                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Kurslar',style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.white,
                    fontFamily: 'KursAdi',
                    fontWeight: FontWeight.bold,
                  ),),
                ],
              ),
            ),
            SizedBox(
              height: 17.0,
            ),
            Container(
              height: 100.0,
              width: 400.0,

              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12.0),
                    topRight: Radius.circular(12.0),
                    bottomLeft: Radius.circular(12.0),
                    bottomRight: Radius.circular(12.0),
                  )
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(

                    radius: 50,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage('images/html5.png'),

                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('HTML',style: TextStyle(
                        fontFamily: 'KursAdi',
                        fontWeight: FontWeight.bold,
                        fontSize: 28.0,
                        color: Color.fromRGBO(113,107,143, 1),
                      ),),
                      Text('Web Tasarım',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(130,132,173, 1),
                      ),),
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios),

                ],
              ),
            ),
            SizedBox(
              height: 17.0,
            ),
            Container(
              height: 100.0,
              width: 400.0,

              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12.0),
                    topRight: Radius.circular(12.0),
                    bottomLeft: Radius.circular(12.0),
                    bottomRight: Radius.circular(12.0),
                  ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(

                    radius: 50,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage('images/css.png'),

                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('CSS',style: TextStyle(
                        fontFamily: 'KursAdi',
                        fontWeight: FontWeight.bold,
                        fontSize: 28.0,
                        color: Color.fromRGBO(113,107,143, 1),
                      ),),
                      Text('Web Tasarım',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(130,132,173, 1),
                      ),),
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios),



                ],
              ),
            ),
            SizedBox(
              height: 17.0,
            ),
            Container(
              height: 100.0,
              width: 400.0,

              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12.0),
                    topRight: Radius.circular(12.0),
                    bottomLeft: Radius.circular(12.0),
                    bottomRight: Radius.circular(12.0),
                  )
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(

                    radius: 50,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage('images/js.png'),

                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('JavaScript',style: TextStyle(
                        fontFamily: 'KursAdi',
                        fontWeight: FontWeight.bold,
                        fontSize: 28.0,
                        color: Color.fromRGBO(113,107,143, 1),
                      ),),
                      Text('Web Tasarım',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(130,132,173, 1),
                      ),),
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios),



                ],
              ),
            ),
            SizedBox(
              height: 17.0,
            ),
            Container(
              height: 100.0,
              width: 400.0,

              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12.0),
                    topRight: Radius.circular(12.0),
                    bottomLeft: Radius.circular(12.0),
                    bottomRight: Radius.circular(12.0),
                  )
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(

                    radius: 50,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage('images/csharp.png'),

                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('C#',style: TextStyle(
                        fontFamily: 'KursAdi',
                        fontWeight: FontWeight.bold,
                        fontSize: 28.0,
                        color: Color.fromRGBO(113,107,143, 1),
                      ),),
                      Text('Programlama',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(130,132,173, 1),
                      ),),
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios),



                ],
              ),
            ),
            SizedBox(
              height: 17.0,
            ),




          ],
        ),
      ),
    );
  }
}
