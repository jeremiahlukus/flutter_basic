import 'package:flutter/material.dart';
import './TextAdder.dart';
void main() => runApp(new Assignment1());

class Assignment1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Assignment1();
  }
}

class _Assignment1 extends State<Assignment1>{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Text Adder"),
        ),
        body: TextAdder(),
      ),
    );
  }
}