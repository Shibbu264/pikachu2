import 'package:flutter/material.dart';
import 'package:pikachu1/pages/home_detail.dart';

import 'package:velocity_x/velocity_x.dart';

import 'package:pikachu1/models/catalog.dart';

import 'catalogitem.dart';

class Cataloglist extends StatelessWidget {
  const Cataloglist({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index) {
          final catalog = CatalogModel.items[index];
          return InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => homedetail(catalog: catalog),
                  )),
              child: CatalogItem(catalog: catalog));
        });
  }
}
