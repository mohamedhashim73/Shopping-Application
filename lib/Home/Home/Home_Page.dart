import 'package:flutter/material.dart';
import 'Offer_Corner.dart';
import 'Sales_Start_In.dart';
import 'The_Kids_Corner.dart';
import 'Top_Brands.dart';
import 'Big_Slider2.dart';
import 'Deals_of_day.dart';
import 'Find_your_Style.dart';
import 'Top_Slider.dart';
import 'package:flutter9/Main/main.dart';

// First Class For First Page on Application >> Home_Page
class Home_Page extends StatefulWidget {
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Home_PageState();
  }
}

// Second Class For First Page on Application >> Home_Page
class Home_PageState extends State<Home_Page> {
  GlobalKey<ScaffoldState> scaffoldkey = new GlobalKey<ScaffoldState>();
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        foregroundColor: isSwitched==false? Colors.black : Colors.white,
        backgroundColor: isSwitched==false? Colors.white : Colors.black,
        leadingWidth: 33,
        title: Image.asset(
          isSwitched==false? "images/logo.png" : "images/logo-white.png",
          width: 125,
        ),
        actions: const [
          Icon(Icons.search),
          SizedBox(
            width: 5,
          ),
          Icon(Icons.notifications_none),
          SizedBox(
            width: 5,
          ),
          Icon(Icons.favorite_outline_sharp),
          SizedBox(
            width: 5,
          ),
          Icon(Icons.shopping_cart),
          SizedBox(
            width: 5,
          ),
        ],
      ),
      body: Container(
        color: isSwitched== false? Colors.white : Colors.black,
        child: Container(
          color: isSwitched== false? Colors.white : Colors.black,
          margin: const EdgeInsets.only(left: 10, right: 10),
          child: ListView(
            children: [
              Top_Slider(),
              Ready_Divider, // I made a ready one on the main function to make it easy in use later
              Big_Slider(),
              Deals_of_Day(),
              Ready_Divider,
              Find_Your_Style(),
              Sales_Start_In(),
              Text(
                "Biggest Deals on Top Brands",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.5,color: isSwitched==false? Colors.black:Colors.white),
              ),
              Top_Brands(),
              Ready_Divider,
              const SizedBox(
                height: 5,
              ),
              Text(
                "The Kids Corner",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.5,color: isSwitched==false? Colors.black:Colors.white),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "Clothing for your Lil's one's",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                    color: Colors.grey),
              ),
              The_kids_Corner(),
              Ready_Divider,
              const SizedBox(
                height: 5,
              ),
              Text(
                "Offer Corner",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,color: isSwitched==false? Colors.black:Colors.white),
              ),
              Offer_Corner(),
            ],
          ),
        ),
      ),
    );
  }
}
