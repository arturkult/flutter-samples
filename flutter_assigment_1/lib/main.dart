import 'package:flutter/material.dart';
import 'package:flutter_assigment_1/textControl.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  String _text = 'before';

  void _onPressed() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _text = 'after';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Assignment 1',
      home: Scaffold(
          appBar: AppBar(),
          body: Column(
            children: [
              Text(_text),
              TextControl(_onPressed),
            ],
          )),
    );
  }
}
