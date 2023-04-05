// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/catalog.dart';

class homedetail extends StatelessWidget {
  const homedetail({
    Key? key,
    required this.catalog,
  }) : super(key: key);
  final Item catalog;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
        children: [
          "\$${catalog.price}".text.bold.xl2.red500.make(),
          ElevatedButton(
            style:
                ButtonStyle(shape: MaterialStateProperty.all(StadiumBorder())),
            onPressed: () {
              Link("www.google.com");
            },
            child: "Add to cart".text.make(),
          )
        ],
      ).p32(),
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: SafeArea(
        bottom: false,
        child: Column(children: [
          Hero(
                  tag: Key(catalog.id.toString()),
                  child: Image.network(catalog.image))
              .p16()
              .h32(context),
          Expanded(
              child: VxArc(
                  height: 30.0,
                  arcType: VxArcType.CONVEY,
                  edge: VxEdge.TOP,
                  child: Container(
                    color: Color.fromARGB(255, 226, 148, 239),
                    width: context.screenWidth,
                    child: Column(children: [
                      catalog.name.text.xl4.bold.color(Colors.black).make(),
                      catalog.desc.text.color(Colors.black).make(),
                      Padding(padding: EdgeInsets.all(6)),
                      "The iPhone 12 Pro display has rounded corners that follow a beautiful curved design, and these corners are within a standard rectangle. When measured as a standard rectangular shape, the screen is 6.06 inches diagonally (actual viewable area is less)."
                          .text
                          .semiBold
                          .textStyle(context.captionStyle)
                          .make()
                    ]).p64(),
                  )))
        ]),
      ),
    );
  }
}
