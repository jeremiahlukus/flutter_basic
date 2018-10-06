import 'package:flutter/material.dart';

import 'package:english_words/english_words.dart';
import './NewText.dart';

class TextAdder extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TextAdderState();
  }
}

class _TextAdderState extends State<TextAdder> {
  List<String> _newText = [];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Container(
            margin: EdgeInsets.all(10.0),
            child: FloatingActionButton(
              onPressed: () {
                setState(() {
                  _newText.add(WordPair.random().asPascalCase);
                });
              },
              child: Icon(Icons.add),
            )),
        NewText(_newText)
      ],
    );
  }
}
