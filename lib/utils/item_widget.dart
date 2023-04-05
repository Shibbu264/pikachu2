import 'dart:ffi';

import 'package:flutter/material.dart'
    show
        BuildContext,
        Card,
        Colors,
        Container,
        Image,
        ListTile,
        StadiumBorder,
        StatelessWidget,
        Text,
        TextStyle,
        Widget;
import 'package:pikachu1/models/catalog.dart';

class MyWidget extends StatelessWidget {
  final Item item;

  const MyWidget({super.key, required this.item}) : assert(item != null);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: StadiumBorder(),
      shadowColor: Colors.deepPurple,
      child: Container(
        child: ListTile(
          onTap: () => {Text("Aukaat ke bahar")},
          leading: Image.network(item.image),
          title: Text(item.name),
          subtitle: Text(item.desc),
          trailing: Text(
            "\$${item.price}",
            style: TextStyle(fontSize: 20, color: Colors.deepPurple),
          ),
        ),
      ),
    );
  }
}
