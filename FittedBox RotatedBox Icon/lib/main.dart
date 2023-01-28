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
        primarySwatch: Colors.blue,
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "RotatedBox Vs FittedBox",
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.lightBlueAccent,
            height: 100,
            width: 100,
            child: RotatedBox(
                quarterTurns: 0,
                child: Text(
                  'Rotated by 0 quarter',
                  style: TextStyle(fontSize: 18, color: Colors.pink),
                )),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.pinkAccent,
            height: 100,
            width: 100,
            child: RotatedBox(
                quarterTurns: 2,
                child: Text(
                  'Rotated by 1 quarter',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.grey,
            height: 100,
            width: 100,
            child: Container(
              alignment: Alignment.center,
              height: 50,
              width: 50,
              color: Colors.pinkAccent,
              child: Text(
                "without fitted box",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            color: Colors.grey,
            height: 100,
            width: 100,
            child: FittedBox(
              fit: BoxFit.fill,
              child: Container(
                height: 50,
                width: 50,
                color: Colors.pinkAccent,
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
          //Flutter icons
          Container(
            child: Icon(
              Icons.favorite,
              color: Colors.blue,
              size: 30.0,
            ),
          ),
          Container(
            child: Icon(
              Icons.audiotrack,
              color: Colors.black,
              size: 30.0,
            ),
          ),
          Container(
            child: Icon(
              FontAwesomeIcons.house,
              size: 50, //Icon Size
              color: Colors.white, //Color Of Icon
            ),
          )
        ],
      ),
    );
  }
}
