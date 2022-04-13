import 'package:flutter/material.dart';
import 'package:flutter9/Provider/Provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter9/Main/main.dart';
class Whitelist extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return WhitelistState();
  }
}
class WhitelistState extends State<Whitelist> {
  GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer<Prov_cart>(builder: (context, prov, child) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: isSwitched== false? Colors.white : Colors.black,
          elevation: 1,
          shadowColor: Colors.white,
          title: const Text("WhiteList"),
          foregroundColor: isSwitched== false? Colors.black : Colors.white,
          titleSpacing: 20,
          actions: [
            IconButton(
              icon: const Icon(Icons.shopping_cart,),
              onPressed: () {Navigator.of(context).pushNamed("Cart");},
            ),
          ],
        ),
        body: Container(
          color: isSwitched==false? Colors.white:Colors.black,
          child: ListView(
            children: [
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: prov.whitelistitems.length,
                  itemBuilder: (context, i) {
                    return Container(
                      margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
                      color: isSwitched== false? Colors.white : Colors.black,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(prov.whitelistitems[i].url,
                                  width: 125, fit: BoxFit.fitWidth),
                              const SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    prov.whitelistitems[i].title,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17,color: isSwitched==false? Colors.black:Colors.white),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(prov.whitelistitems[i].subtitle,style: TextStyle(color: Colors.grey, fontSize: 15),),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "${prov.whitelistitems[i].price}\$",
                                        style: TextStyle(fontSize: 15,color: isSwitched==false? Colors.black:Colors.white),
                                      ),
                                      SizedBox(width: 5,),
                                      Text(
                                        "35,00",
                                        style: TextStyle(
                                            fontSize: 15,
                                            decoration:
                                            TextDecoration.lineThrough,color: isSwitched==false? Colors.black:Colors.white),
                                      ),
                                      const SizedBox(width: 5,),
                                      const Text("20%", style: TextStyle(fontSize: 15,color: Colors.red,fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Divider(color: Colors.red,thickness: 5,),
                                  // ******************************************** Final Icons *******************************
                                  Container(
                                    width: 175,
                                    height: 40,
                                    child: Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        Positioned(
                                          right: 80,
                                          child: Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    prov.AddItem(
                                                        prov.whitelistitems[i]);
                                                  },
                                                  icon: Icon(Icons.shopping_cart,size: 18,color: isSwitched==false? Colors.black:Colors.white
                                                  )),
                                              Text(
                                                "Add to Cart",
                                                style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: isSwitched==false? Colors.black:Colors.white),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Positioned(
                                          left: 80,
                                          child: Row(
                                            children: [
                                              const SizedBox(width: 10,),
                                              IconButton(
                                                  onPressed: () {prov.RemoveFromWhite(prov.whitelistitems[i]);},
                                                  icon: Icon(Icons.delete, size: 18,color: isSwitched==false? Colors.black:Colors.white)),
                                              Text(
                                                "Remove",
                                                style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: isSwitched==false? Colors.black:Colors.white)),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
            ],
          ),
        )
      );
    });
  }
}
