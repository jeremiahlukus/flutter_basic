import 'package:flutter/material.dart';
import './pages/product_page.dart';

class Products extends StatelessWidget {
  final List<Map<String, String>>  products;
  final Function deleteProduct;

  Products(this.products, {this.deleteProduct}) {
    print("Products Widget Constructor");
  }

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      color: Color(getColorHexFromStr("#5fd7fe")),
      child: Column(
        children: <Widget>[
          Image.asset(products[index]['imageUrl']),
          Text(products[index]['title']),
          ButtonBar(
            children: <Widget>[
              FlatButton(
                child: Text("Details"),
                onPressed: () {
                  Navigator.push<bool>(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => ProductPage(products[index]['title'], products[index]['imageUrl']))
                  ).then((bool value) {
                    if(value) {
                      deleteProduct(index);
                    }
                  });
                },
              )
            ],
            alignment: MainAxisAlignment.center,
          )
        ],
      ),
    );
  }

  Widget _buildProductLists() {
    return products.length > 0
        ? ListView.builder(
            itemBuilder: _buildProductItem,
            itemCount: products.length,
          )
        : Center(child: Text("Add a Product"));
  }

  @override
  Widget build(BuildContext context) {
    print("Products Widget Build");
    return _buildProductLists();
  }
}

int getColorHexFromStr(String colorStr) {
  colorStr = "FF" + colorStr;
  colorStr = colorStr.replaceAll("#", "");
  int val = 0;
  int len = colorStr.length;
  for (int i = 0; i < len; i++) {
    int hexDigit = colorStr.codeUnitAt(i);
    if (hexDigit >= 48 && hexDigit <= 57) {
      val += (hexDigit - 48) * (1 << (4 * (len - 1 - i)));
    } else if (hexDigit >= 65 && hexDigit <= 70) {
      // A..F
      val += (hexDigit - 55) * (1 << (4 * (len - 1 - i)));
    } else if (hexDigit >= 97 && hexDigit <= 102) {
      // a..f
      val += (hexDigit - 87) * (1 << (4 * (len - 1 - i)));
    } else {
      throw new FormatException("An error occurred when converting a color");
    }
  }
  return val;
}
