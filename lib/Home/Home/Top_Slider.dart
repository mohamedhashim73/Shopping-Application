import 'package:flutter/material.dart';
import 'package:flutter9/Main/main.dart';

class Top_Slider extends StatelessWidget {
  List photos = [
    {"url": "images/14.jpg", "type": "Kids"},
    {"url": "images/12.jpg", "type": "Beauty"},
    {"url": "images/3.png", "type": "Men"},
    {"url": "images/31.jpg", "type": "jewelry"},
    {"url": "images/18.jpg", "type": "Women"},
    {"url": "images/15.jpg", "type": "FootWear"},
  ];
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 110,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: photos.length,
        itemBuilder: (context, i) {
          return Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 4),
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed("Category_Part2");
                      },
                      child: CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage(photos[i]["url"]),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 3),
                child: Row(
                  children: [
                    Text(
                      photos[i]["type"],
                      style: TextStyle(color: isSwitched== false? Colors.black : Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
