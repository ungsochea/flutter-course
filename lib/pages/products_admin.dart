import 'package:flutter/material.dart';
import './products.dart';
import './product_create.dart';
import './product_list.dart';

class ProductAdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          drawer: Drawer(
            child: Column(
              children: <Widget>[
                AppBar(
                  automaticallyImplyLeading: false,
                  title: Text('Chosse'),
                ),
                ListTile(
                  title: Text('All Products'),
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => ProductsPage()));
                  },
                )
              ],
            ),
          ),
          appBar: AppBar(
            title: Text('Product Manage'),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.create),
                  text: 'Create Product',
                ),
                Tab(
                  icon: Icon(Icons.list),
                  text: 'My Product',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[ProductCreatePage(), ProductListPage()],
          )),
    );
  }
}
