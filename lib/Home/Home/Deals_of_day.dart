import 'package:flutter/material.dart';
import 'package:flutter9/Main/Items.dart';
import 'package:flutter9/Provider/Provider.dart';
import 'package:flutter9/Main/main.dart';
import 'package:provider/provider.dart';
class Deals_of_Day extends StatefulWidget {
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Deals_of_DayState();
  }
}
class Deals_of_DayState extends State<Deals_of_Day> {
  final List<Items> _content = [
    // _content is an object from Items class
    Items(
        url: "images/12.jpg",
        title: "Pink Hoodie t-shirt",
        subtitle: "by Mango",
        price: 2000),
    Items(
        url: "images/22.jpg",
        title: "Men Blue denim",
        subtitle: "by Zara",
        price: 1500),
    Items(
        url: "images/17.jpg",
        title: "Women dress",
        subtitle: "by Yamo",
        price: 3000),
  ];
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: [
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Deals of the Day",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19,color: isSwitched==false? Colors.black:Colors.white),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("Shop_Now");
                },
                child: const Text(
                  "Show All",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.red),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          // Container Which include 3 ListTile
          ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: _content.length,
              itemBuilder: (context, i) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 120,
                            height: 120,
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Positioned(
                                  right: 0.5,
                                  child: MaterialButton(
                                      onPressed: () {
                                        Navigator.of(context)
                                            .pushNamed("Shop_Now_Photo");
                                      },
                                      child: Image.asset(
                                        _content[i].url,
                                        width: 120,
                                        height: 120,
                                      )),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(0),
                            alignment: Alignment.topLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(_content[i].title,
                                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: isSwitched==false? Colors.black:Colors.white),),
                                const SizedBox(height: 3,),
                                Text(
                                  _content[i].subtitle,
                                  style: const TextStyle(
                                      color: Colors.grey, fontSize: 15),
                                ),
                                const SizedBox(height: 4),
                                Row(
                                  children: [
                                    Text("${_content[i].price} \$",
                                      style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: isSwitched==false? Colors.black:Colors.white),),
                                    const SizedBox(width: 10,),
                                    Text(
                                      "35,00",
                                      style: TextStyle(
                                          fontSize: 15,
                                          decoration:
                                              TextDecoration.lineThrough,color: isSwitched==false? Colors.black:Colors.white),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Text(
                                      "20%",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Consumer<Prov_cart>(builder: (context, prov, child) {
                        return SizedBox(
                          width: 50,
                          height: 100,
                          child: Container(
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 15,
                                  top: 10,
                                  child: CircleAvatar(
                                    radius: 17,
                                    backgroundColor: isSwitched== false? Colors.white : Colors.white10,
                                    child: GestureDetector(
                                      child: Icon(
                                        Icons.favorite,
                                        color: isSwitched==false? Colors.black38 : Colors.white,
                                      ),
                                      onTap: () {
                                        prov.AddItem(_content[i]);
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                    ],
                  ),
                );
              }),
        ],
      ),
    );
  }
}
