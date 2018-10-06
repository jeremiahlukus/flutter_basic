import 'package:flutter/material.dart';

class NewText extends StatelessWidget {
  final List<String> newText;

  NewText(this.newText);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: newText.map((element) => Card(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Text(element, style: TextStyle(color: Colors.green, fontSize: 23.0))
          ],
        ),
      )).toList(),
    );
  }
}