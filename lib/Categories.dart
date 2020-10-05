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
      body: Column(

        children: <Widget>[
          Row(
            children: <Widget>[
              Text('Kategoriler'),
            ],
          ),
          Container(
            height: 400.0,
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
            child: CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1248312733801406464/swAuOAfC_400x400.jpg'),
            ),
          ),


        ],
      ),
    );
  }
}
