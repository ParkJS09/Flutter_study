import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(child: setBody()),
      ),
    ),
  );
}

Widget setBody() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      //Profile 을 위한 CircleAvatar
      Center(
        child: CircleAvatar(
          radius: 50.0,
          backgroundImage: AssetImage('Images/my_image.png'),
        ),
      ),
      Text(
        "Park JongSoon",
        style: TextStyle(
            fontFamily: 'dokdo',
            fontSize: 14.0,
            color: Colors.white,
            fontWeight: FontWeight.bold),
      ),

      Text(
        'Flutter Tutorial',
        style: TextStyle(
          fontFamily: 'NanumBold',
          fontSize: 14.0,
          color: Colors.teal.shade100,
        ),
      )
    ],
  );
}

/*
Column example
 */
Widget setColumn() {
  return Column(
    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //crossAxisAlignment: CrossAxisAlignment.center,
    //stretch속성을 사용하여 childer의 값들을 match_parent 가능
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      Container(
        height: 100.0,
        color: Colors.white,
        child: Text('Container1'),
      ),
      SizedBox(
        height: 20.0,
      ),
      Container(
        height: 100.0,
        color: Colors.blue,
        child: Text('Container2'),
      ),
      SizedBox(
        height: 20.0,
      ),
      Container(
        height: 100.0,
        color: Colors.red,
        child: Text('Container3'),
      ),
      SizedBox(
        height: 20.0,
      ),
      Container(
        //double.infinity값을 통하여 전체 길이를 측정 가능
        //width: double.infinity,
        height: 0.3,
        color: Colors.black,
      )
    ],
  );
}

Widget setRow() {
  return Row();
}
