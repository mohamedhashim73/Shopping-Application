import 'package:flutter/material.dart';
import 'package:flutter9/Main/main.dart';

class Shop_Now_Photo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Shop_Now_PhotoState();
  }
}

class Shop_Now_PhotoState extends State<Shop_Now_Photo> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: isSwitched== false? Colors.white : Colors.black,
        elevation: 0,
        title: const Text("Floral T-Shirts"),
        foregroundColor: isSwitched== false? Colors.black : Colors.white,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.favorite_outline_sharp,
            ),
            onPressed: () {
              Navigator.of(context).pushNamed("Whitelist");
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.shopping_cart,
            ),
            onPressed: () {
              Navigator.of(context).pushNamed("Cart");
            },
          ),
        ],
      ),
      body: Container(
        color: isSwitched==false? Colors.white : Colors.black,
        height: double.infinity,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
            Container(
              width: double.infinity,
              height: 600,
              margin: const EdgeInsets.only(bottom: 15),
              child: GridView.count(
                crossAxisCount: 1,
                scrollDirection: Axis.horizontal,
                childAspectRatio: 1.5,
                children: [
                  Image.asset(
                    "images/s7.jpg",
                  ),
                  Image.asset(
                    "images/nu.jpg",
                  ),
                ],
              ),
            ),
            // ************************************ Content ******************************************
          ],
        ),
      )
    );
  }
}
