import 'package:flutter/material.dart';
import 'package:flutter9/Main/main.dart';
List Images_Names = [
  "images/kids.png",
  "images/beauty.png",
  "images/footwear.png",
  "images/jewllery.png"
];
class Category extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CategoryState();
  }
}

class CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: isSwitched== false? Colors.white : Colors.black,
        elevation: 0,
        title: Text("Category"),
        foregroundColor: isSwitched== false? Colors.black : Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_outline_sharp,),
            onPressed: () {Navigator.of(context).pushNamed("Whitelist");},
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
            ),
            onPressed: () {
              Navigator.of(context).pushNamed("Cart");
            },
          ),
        ],
      ),
      body: Container(
        color: isSwitched==false? Colors.white:Colors.black,
        child: ListView(
          shrinkWrap: true,
          children: [
            // ************************************** The beginning of sales **************************************
            Container(
              height: 100,
              padding: const EdgeInsets.all(10),
              margin:
              const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
              decoration: BoxDecoration(
                color: Colors.red.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "images/sale.gif",
                          height: 50,
                          fit: BoxFit.fitHeight,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Upto 50% of all products ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: isSwitched== false? Colors.black : Colors.white,
                              fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      left: 220,
                      bottom: 1,
                      child: Image.asset(
                        "images/sale.png",
                        height: 100,
                        fit: BoxFit.fitHeight,
                      )),
                ],
              ),
            ),
            // ************************** The beginning of Women Container *************************
            Container(
              height: 100,
              padding: const EdgeInsets.all(10),
              margin:
              const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
              decoration: BoxDecoration(
                color: Colors.blueGrey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Women",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                              fontSize: 18),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "T-Shirts, Tops, Bottoms...",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: isSwitched== false? Colors.black : Colors.white,
                              fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      left: 210,
                      bottom: 1,
                      child: Image.asset(
                        "images/women.png",
                        height: 100,
                        fit: BoxFit.fitHeight,
                      )),
                ],
              ),
            ),
            // ************************** The beginning of Man Container *************************
            Container(
              height: 100,
              padding: const EdgeInsets.all(10),
              margin:
              const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
              decoration: BoxDecoration(
                color: Colors.red.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Men",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                              fontSize: 18),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Jackets, Jeans, Denims...",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: isSwitched== false? Colors.black : Colors.white,
                              fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      left: 250,
                      bottom: 0,
                      child: Image.asset(
                        "images/men.png",
                        width: 70,
                        fit: BoxFit.fitWidth,
                      )),
                ],
              ),
            ),
            // ************************** The beginning of Kids Container *************************
            Container(
              height: 100,
              padding: const EdgeInsets.all(10),
              margin:
              const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
              decoration: BoxDecoration(
                color: Colors.blueGrey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Kids",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                              fontSize: 18),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Clothing, Toys, Books",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: isSwitched== false? Colors.black : Colors.white,
                              fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      left: 200,
                      bottom: 0,
                      child: Image.asset(
                        "images/kids.png",
                        height: 110,
                        fit: BoxFit.fitHeight,
                      )),
                ],
              ),
            ),
            // ************************** The beginning of Beauty Container *************************
            Container(
              height: 100,
              padding: const EdgeInsets.all(10),
              margin:
              const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
              decoration: BoxDecoration(
                color: Colors.red.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Beauty",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                              fontSize: 18),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Skincare, HairCare, Makeup",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: isSwitched== false? Colors.black : Colors.white,
                              fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      left: 225,
                      bottom: 1,
                      child: Image.asset(
                        "images/beauty.png",
                        height: 100,
                        fit: BoxFit.fitHeight,
                      )),
                ],
              ),
            ),
            // ************************** The beginning of FootWear Container *************************
            Container(
              height: 100,
              padding: const EdgeInsets.all(10),
              margin:
              const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
              decoration: BoxDecoration(
                color: Colors.blueGrey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "FootWear",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                              fontSize: 18),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Shoes, Sandles, ActiveWears",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: isSwitched== false? Colors.black : Colors.white,
                              fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      left: 220,
                      bottom: 1,
                      child: Image.asset(
                        "images/footwear.png",
                        height: 100,
                        fit: BoxFit.fitHeight,
                      )),
                ],
              ),
            ),
            // ************************** The beginning of Jewellery Container *************************
            Container(
              height: 100,
              padding: const EdgeInsets.all(10),
              margin:
              const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
              decoration: BoxDecoration(
                color: Colors.red.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Jewellery",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                              fontSize: 18),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Necklaces, Chains, Earrings",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: isSwitched== false? Colors.black : Colors.white,
                              fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      left: 215,
                      bottom: 0,
                      child: Image.asset(
                        "images/jewllery.png",
                        height: 110,
                        fit: BoxFit.fitHeight,
                      )),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
