
import 'package:flutter/material.dart';
import './home_page.dart';

class ProductAdminPage extends StatelessWidget {

  Widget _addDrawer(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            title: Text("Choose"),
            automaticallyImplyLeading: false,
          ),
          ListTile(
            title: Text("View All Products"),
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => HomePage()));
            },
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _addDrawer(context),
      appBar: AppBar(
        title: Text('Manage Product'),
      ),
      body: Center(child: Text("Magnage")),
    );
  }
}
