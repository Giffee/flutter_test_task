import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyPage()));
}

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => new _MyPageState();
}

class _MyPageState extends State<MyPage> {
  final Random _random = Random();

  Color colorBackground = Colors.white;
  Color colorText = Colors.black;

  void changeBackgroundColor() {
    setState(() {
      colorBackground = Color.fromARGB(
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
      );
    });
  }

  void changeTextColor() {
    setState(() {
      colorText = Color.fromARGB(
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
        child: new Container(
            child: new Material(
              child: new InkWell(
                  onTap: changeBackgroundColor,
                  child: new Container(
                    color: colorBackground,
                    alignment: FractionalOffset.center,
                    child: new InkWell(
                      onTap: changeTextColor,
                      child: new Container(
                        child: new Text(
                          'Hello Solid Software',
                          style: new TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                              color: colorText),
                        ),
                      ),
                    ),
                  )),
            )),
      ),
      appBar: new AppBar(
        title: new Text('Flutter test task'),
        actions: <Widget>[],
      ),
    );
  }
}
