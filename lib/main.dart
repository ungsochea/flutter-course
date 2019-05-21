import 'package:flutter/material.dart';

import './pages/auth.dart';
import './pages/products_admin.dart';
import './pages/products.dart';
import './pages/product.dart';

main() => runApp(MyApp());


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Map<String,String>> _products = [];

  void _addProduct(Map<String,String> product){
     setState(() {
        _products.add(product);
        // print(_products);
      });
  }

  void _deleteProduct(int index){
    setState(() {
      _products.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.deepOrange,
          accentColor: Colors.deepPurple),
      // home: AuthPage(),
      routes: {
        '/':(BuildContext context) => ProductsPage(_products,_addProduct,_deleteProduct),
        '/admin':(BuildContext context) => ProductAdminPage(),
      },
      onGenerateRoute: (RouteSettings setting){
        final List<String> pathElements = setting.name.split('/');
        if(pathElements[0] != ''){
          return null;
        }
        if(pathElements[1] == 'product'){
          final int index = int.parse(pathElements[2]);
          return MaterialPageRoute<bool>(builder: (BuildContext context) => ProductPage(
            _products[index]['title'],_products[index]['image']
          ));
        }
      },
    );
  }
}