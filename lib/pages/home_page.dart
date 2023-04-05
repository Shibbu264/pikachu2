import 'package:flutter/material.dart';

import 'package:pikachu1/pages/Drawer.dart';
import 'package:pikachu1/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:pikachu1/models/catalog.dart';

import 'home_widgets/catalog_header.dart';
import 'home_widgets/catalog_list.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;
  final String name = "Codepur";
  final imageurl = "";

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, MyRoutes.cartroute);
        },
        highlightElevation: 10,
        splashColor: Colors.deepPurpleAccent,
        child: Icon(
          Icons.shopping_cart,
        ),
      ),
      body: SafeArea(
        child: Padding(
            padding: Vx.m32,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Catalogheader(),
              if (CatalogModel.items != null)
                Cataloglist().expand()
              else
                Center(
                  child: CircularProgressIndicator(),
                )
            ])),
      ),
      drawer: drawer(),
    );
    return scaffold;
  }

  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
