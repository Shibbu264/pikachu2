import 'package:flutter/material.dart';

import 'package:velocity_x/velocity_x.dart';

import 'package:pikachu1/models/catalog.dart';

import '../../utils/routes.dart';

class CatalogItem extends StatefulWidget {
  final Item catalog;
  const CatalogItem({
    Key? key,
    required this.catalog,
  })  : assert(catalog != null),
        super(key: key);

  @override
  State<CatalogItem> createState() => _CatalogItemState();
}

class _CatalogItemState extends State<CatalogItem> {
  @override
  Widget build(BuildContext context) {
    var abc = false;
    return VxBox(
        child: Row(
      children: [
        Hero(
          tag: Key(widget.catalog.id.toString()),
          child: Image.network(widget.catalog.image)
              .box
              .rounded
              .pink100
              .color(Color.fromARGB(255, 205, 226, 180))
              .make(),
        ),
        Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            widget.catalog.name.text.bold.make(),
            widget.catalog.desc.text.textStyle(context.captionStyle).make(),
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              children: [
                "\$${widget.catalog.price}".text.make(),
                ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(StadiumBorder())),
                  onPressed: () {
                    abc = abc.toggle();
                    setState(() {});
                  },
                  child: abc ? Icon(Icons.done) : "Add to cart".text.make(),
                )
              ],
            )
          ],
        ))
      ],
    )).white.rounded.square(150).py16.make();
  }
}
