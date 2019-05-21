import 'package:flutter/material.dart';
import './products.dart';

class ProductAdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(
                automaticallyImplyLeading: false,
                title: Text('Chosse'),
              ),
              ListTile(
                title: Text('All Products'),
                onTap: (){
                 Navigator.pushReplacement(
                    context, 
                    MaterialPageRoute(
                      builder: (BuildContext context) => ProductsPage()
                      )
                    );
                },
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Product Manage'),
        ),
        body: Center(child: Text('Product manage'),));
  }
}