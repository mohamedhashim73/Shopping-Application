import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter9/Main/main.dart';

List _titlesNames = [
  "Fashion Wear",
  "Western Wear",
  "FootWear",
  "Sports & Active Wear",
  "Beauty & Personal Care",
  "Gadgets",
  "Blue Size"
];
List _subtitlesNames = [
  "T-Shirts",
  "Jackets",
  "Tops",
  "Capes",
  "HandBags",
  "Night Wear",
  "Tunics"
];
List _Images_Url = [
  "images/s3.jpg",
  "images/s4.jpg",
  "images/s5.jpg",
];
List _Brands = [
  "images/63.png",
  "images/62.png",
  "images/64.png",
  "images/64.png",
  "images/65.png",
  "images/66.png"
];

class Category_Part2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Category_Part2State();
  }
}

class Category_Part2State extends State<Category_Part2> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: isSwitched== false? Colors.white : Colors.black,
          foregroundColor: isSwitched== false? Colors.black : Colors.white,
          titleSpacing: 0,
          elevation: 0,
          title: Row(
            children: [
              TextButton(
                  style: TextButton.styleFrom(
                      primary: isSwitched== false? Colors.black : Colors.white,
                      textStyle:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  onPressed: () {
                    Navigator.of(context).pushNamed("Category");
                  },
                  child: Text("Categories")),
              const SizedBox(
                width: 5,
              ),
              const Icon(
                Icons.keyboard_arrow_right,
                color: Colors.grey,
                size: 25,
              ),
              const SizedBox(
                width: 3,
              ),
              const Text(
                "Men",
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ],
          ),
        ),
        body: Container(
          margin:
              const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
          child: ListView(
            shrinkWrap: true,
            children: [
              Container(
                height: 100,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.orange.withOpacity(0.5),
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
                          Text(
                            "Men",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                                fontSize: 18),
                          ),
                          SizedBox(
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
                    const Positioned(
                      left: 240,
                      bottom: 0,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("images/z.png"),
                        radius: 40,
                      ),
                    ),
                  ],
                ),
              ),
              // ********************************* ExpansionTile *******************************************************
              ListView.builder(
                  itemCount: _titlesNames.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, i) {
                    return ExpansionTile(
                      childrenPadding: EdgeInsets.all(0),
                      textColor: isSwitched== false? Colors.black : Colors.white,
                      title: Text(
                        (_titlesNames[i]),
                        style: TextStyle(fontSize: 18),
                      ),
                      children: [
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: _subtitlesNames.length,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, i) {
                            return ListTile(
                              title: Text(
                                _subtitlesNames[i],
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                              onTap: () {
                                Navigator.of(context).pushNamed("Shop_Now");
                              },
                              hoverColor: Colors.red,
                            );
                          },
                        )
                      ],
                    );
                  }),
              // ********************************** Three Images ***********************************************
              GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, crossAxisSpacing: 0),
                  itemBuilder: (context, i) {
                    return MaterialButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed("Shop_Now");
                      },
                      child: Image.asset(_Images_Url[i]),
                    );
                  }),
              // ******************************** Top Brands *************************************
              const SizedBox(
                height: 15,
              ),
              Row(
                children: const [
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    "Biggest Deals on Top Brands",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: 6,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 0),
                  itemBuilder: (context, i) {
                    return MaterialButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed("Category_Part2");
                      },
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.grey.withOpacity(0.5),
                        ),
                        height: 80,
                        width: 100,
                        child: Image.asset(_Brands[i]),
                      ),
                    );
                  }),
            ],
          ),
        ));
  }
}
