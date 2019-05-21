import 'package:flutter/material.dart';

import '../product_manager.dart';
import './products_admin.dart';

class ProductsPage extends StatelessWidget {
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
                title: Text('Manager Products'),
                onTap: (){
                  Navigator.pushReplacement(
                    context, 
                    MaterialPageRoute(
                      builder: (BuildContext context) => ProductAdminPage()
                      )
                    );
                },
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('EasyList'),
        ),
        body: ProductManager());
  }
}