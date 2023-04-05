import 'package:flutter/material.dart';
import 'package:pikachu1/models/cartmodel.dart';
import 'package:velocity_x/velocity_x.dart';

class cartpage extends StatefulWidget {
  const cartpage({super.key});

  @override
  State<cartpage> createState() => _cartpageState();
}

class _cartpageState extends State<cartpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "My Cart".text.color(Colors.deepPurple).make(),
      ),
      body: Column(
        children: [
          cartlist().p32().expand(),
          Divider(),
          carttotal(),
        ],
      ),
    );
  }
}

class carttotal extends StatelessWidget {
  const carttotal({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = CartModel();
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$${cart.totalPrice}".text.xl4.color(Colors.deepPurple).make(),
          WidthBox(30),
          ElevatedButton(onPressed: () {}, child: "Buy".text.xl4.make())
        ],
      ),
    );
  }
}

class cartlist extends StatefulWidget {
  const cartlist({super.key});

  @override
  State<cartlist> createState() => _cartlistState();
}

class _cartlistState extends State<cartlist> {
  final cart = CartModel();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cart.items.length,
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.done),
        trailing: IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: "Buying not supported yet!".text.make(),
              ));
            },
            icon: Icon(Icons.remove_circle_outline)),
        title: cart.items[index].name.text.make(),
      ),
    );
  }
}
