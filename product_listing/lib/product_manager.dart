import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;
  ProductManager(this.startingProduct);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];
  @override
  void initState() {
    super.initState();
    _products.add(widget.startingProduct);
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: [
      Container(
          margin: EdgeInsets.all(10.0),
          child: FloatingActionButton(
            backgroundColor: Theme.of(context).primaryColor,
              onPressed: () {
                setState(() {
                  _products.add("test");
                });
              },
              child: Icon(Icons.add))),
      Products(_products)
    ]);
  }
}