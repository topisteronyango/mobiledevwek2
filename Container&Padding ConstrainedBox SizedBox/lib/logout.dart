import 'package:flutter/material.dart';

class LogoutPage extends StatefulWidget {
  @override
  _LogoutPageState createState() => new _LogoutPageState();
}

class _LogoutPageState extends State<LogoutPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Logout Page'),
      ),
    );
  }
}
