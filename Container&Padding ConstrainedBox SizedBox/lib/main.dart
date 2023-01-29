/*
The goal for this work is to understand:
1. Container & padding
2. ConstrainedBox
3. SizedBox
*/

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter First Assignment',
      // color: Color(0xffe32f22),
      // theme: ThemeData(
      // primarySwatch: Colors.red,
      // ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'CANVAS'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
        centerTitle: true,
        backgroundColor: Color(0xff3b3939),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 120,
              height: 40,
              color: Color(0xffc69390),
              padding: EdgeInsets.fromLTRB(20, 10, 25, 5),
              child: (Text("Dashboard")),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 120,
              height: 40,
              color: Color(0xffc69390),
              padding: EdgeInsets.fromLTRB(30, 10, 30, 5),
              child: (Text("Courses")),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 120,
              height: 40,
              color: Color(0xffc69390),
              padding: EdgeInsets.fromLTRB(30, 10, 30, 5),
              child: (Text("Calender")),
            ),
            SizedBox(
              height: 10,
            ),

            /*for constrainedBox the size you declared must first check the constraints
            for example the following two container have the same height and width values but they have 
            different constraints that why one is followed the defined values of height and width but 
            the second one followed the minimum constraints values */
            Container(
              constraints: BoxConstraints(
                maxHeight: 100,
                maxWidth: 200,
                minHeight: 35,
                minWidth: 70,
              ),
              width: 120,
              height: 40,
              color: Color(0xffc69390),
              padding: EdgeInsets.fromLTRB(30, 10, 30, 5),
              child: (Text("Groups")),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              constraints: BoxConstraints(
                maxHeight: 30,
                maxWidth: 80,
                minHeight: 20,
                minWidth: 70,
              ),
              width: 120,
              height: 40,
              color: Color(0xffc69390),
              padding: EdgeInsets.fromLTRB(30, 10, 30, 5),
              child: (Text("Groups")),
            ),
          ],
        ),
      ),
    );
  }
}
