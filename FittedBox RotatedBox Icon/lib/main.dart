import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Widgets',
      // Application theme data, you can set the colors for the application as
      // you want

      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Widgets'),
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
        title: (Text(title)),
        centerTitle: true,
      ),
      //Column widget to display all it's chilldren in a vertical array
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //Text widget
          Text(
            "RotatedBox Vs FittedBox",
          ),
          //Container widget without RotatedBox widget
          Container(
            alignment: Alignment.center,
            color: Color(0xff6f858e),
            height: 100,
            width: 100,
            child: RotatedBox(
                quarterTurns: 0,
                child: Text(
                  'Rotated by 0 quarter',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                )),
          ),
          //Container with RotatedBox widget
          Container(
            alignment: Alignment.center,
            color: Colors.black,
            height: 100,
            width: 100,
            child: RotatedBox(
                quarterTurns: 2,
                child: Text(
                  'Rotated by 1 quarter',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )),
          ),
          //Container without FittedBox widget
          Container(
            alignment: Alignment.center,
            color: Colors.grey,
            height: 100,
            width: 100,
            child: Container(
              alignment: Alignment.center,
              height: 50,
              width: 50,
              color: Colors.black,
              child: Text(
                "without fitted box",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          //Container with FittedBox widget
          Container(
            color: Colors.grey,
            height: 100,
            width: 100,
            child: FittedBox(
              fit: BoxFit.fill,
              child: Container(
                height: 50,
                width: 50,
                color: Colors.black,
                child: Center(
                  child: Text(
                    "With Fitted Box",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          //Container widget with Flutter icons
          Container(
            child: Icon(
              Icons.favorite,
              color: Colors.blue,
              size: 30.0,
            ),
          ),
          //Container widget with Flutter icons
          Container(
            child: Icon(
              Icons.audiotrack,
              color: Colors.black,
              size: 30.0,
            ),
          ),
          //Container widget with font awesome icons
          Container(
            child: Icon(
              FontAwesomeIcons.android,
              size: 50, //Icon Size
              color: Colors.black, //Color Of Icon
            ),
          )
        ],
      ),
    );
  }
}
