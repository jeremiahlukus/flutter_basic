import 'package:flutter/material.dart';
import 'dart:async';


class ProductPage extends StatelessWidget {
  final String title;
  final String imageUrl;
  ProductPage(this.title, this.imageUrl);



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return WillPopScope(onWillPop: (){
      print("Pushed back");
      // Pass in false to not delete the product
      Navigator.pop(context, false);
      //do not continue with the original back pop request
      return Future.value(false);
    },
        child:
      Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(imageUrl),
            Container(padding: EdgeInsets.all(10.0), child: Text(title)),
            Container(padding: EdgeInsets.all(10.0), child: FlatButton(
                onPressed: () => Navigator.pop(context, true), child: Text("Delete"), color: Theme.of(context).accentColor,))
          ],
        ),
      ));
  }
}
