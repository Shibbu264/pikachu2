import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Catalogheader extends StatelessWidget {
  const Catalogheader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      'Catalog APP'.text.xl5.bold.color(Colors.deepPurple).make(),
      Padding(padding: Vx.m1),
      "Trending products".text.xl2.color(Colors.purple).make(),
    ]);
  }
}
