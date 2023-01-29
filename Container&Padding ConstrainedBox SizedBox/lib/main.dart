/*
The goal for this work is to understand and also cover the following parties of assignment
1. Container & padding
2. ConstrainedBox
3. SizedBox
8. Floating action button,
9. side menu, popup menu

*/

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import './about.dart';
import './logout.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      debugShowCheckedModeBanner: false,
      title: 'Flutter First Assignment',
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
            backgroundColor: Colors.blue,
            actions: <Widget>[
              PopupOptionMenu(),
            ]),
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

        //floating button named chat with message icon
        floatingActionButton: FloatingActionButton.extended(
          // child: Icon(Icons.add),
          onPressed: () {
            print("chat activated");
          },
          icon: Icon(Icons.message),
          label: Text("Chat"),
          foregroundColor: Colors.blue,
          backgroundColor: Colors.white,
        ),

        //sidebar navigation menu 
        drawer: new Drawer(
          child: ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountName: new Text("Lievin"),
                accountEmail: new Text("niyoyandika@gmail.com"),
                currentAccountPicture: new CircleAvatar(
                  backgroundImage: new NetworkImage('http://i.pravator.cc/300'),
                ),
              ),
              new ListTile(
                title: new Text('About Page'),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (BuildContext context) => new AboutPage(),
                    ),
                  );
                },
              ),
              new Divider(
                color: Colors.black,
                height: 5.0,
              ),
              new ListTile(
                title: new Text('Logout'),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (BuildContext context) => new LogoutPage(),
                    ),
                  );
                },
              ),
              //  PopupOptionMenu(),
            ],
          ),
        ));
  }
}
// popup option menu for page cancel and notifications
enum MenuOption { Notifications, Discard }

class PopupOptionMenu extends StatelessWidget {
  const PopupOptionMenu({key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<MenuOption>(
      itemBuilder: (BuildContext context) {
        return <PopupMenuEntry<MenuOption>>[      
          PopupMenuItem(
            
            // notification pop up
            child: Icon(Icons.notifications, color: Colors.black, size: 28),
            value: MenuOption.Notifications,
          ),
          PopupMenuItem(
            
            //cancel icon popup
            child: Icon(Icons.cancel, color: Colors.black, size: 28),
            value: MenuOption.Discard,
          ),
        ];
      },
    );
  }
}
