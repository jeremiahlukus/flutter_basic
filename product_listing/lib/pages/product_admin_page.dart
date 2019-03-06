import 'package:flutter/material.dart';
import './home_page.dart';
import './product_create.dart';
import './product_list.dart';

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
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          drawer: _addDrawer(context),
          appBar: AppBar(
            title: Text('Manage Product'),
            bottom: TabBar( tabs: <Widget>[
              Tab(text: "Create Product",icon: Icon(Icons.create),),
              Tab(text: "My Product",icon: Icon(Icons.list),),
            ],

            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ProductCreatePage(),
              ProductListPage()
            ],
          ),),
        );
  }
}
