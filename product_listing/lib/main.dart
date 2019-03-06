import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import './pages/login_page.dart';
import './pages/product_admin_page.dart';
import './pages/home_page.dart';
import './pages/product_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.blueGrey,
          accentColor: Colors.blueAccent),
      //home: LoginPage(),
      routes: {
        '/': (BuildContext context) => HomePage(),
        '/admin': (BuildContext context) => ProductAdminPage(),
      },
      onGenerateRoute: (RouteSettings settings) {
        final List<String> pathElements = settings.name.split('/');
        if (pathElements[0] != '') {
          return null;
        }
        if (pathElements[1] == 'product') {
          final int index = int.parse(pathElements[2]);
          return MaterialPageRoute(
              builder: (BuildContext context) => ProductPage(
                  products[index]['title'], products[index]['imageUrl']));
        }
        return null;
      },
    );
  }
}
