import 'package:flutter/material.dart';
import 'package:flutter9/Main/main.dart';

class Top_Brands extends StatelessWidget {
  final List _image_url = [
    "images/63.png",
    "images/62.png",
    "images/64.png",
    "images/64.png",
    "images/65.png",
    "images/66.png"
  ];
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 50,
      margin: EdgeInsets.only(bottom: 5, top: 12),
      child: GridView.builder(
          shrinkWrap: true,
          itemCount: _image_url.length,
          scrollDirection: Axis.horizontal,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 0.4,
            mainAxisSpacing: 20,
          ),
          itemBuilder: (context, i) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: isSwitched==false? Colors.black.withOpacity(0.2) : Colors.white,
              ),
              padding: const EdgeInsets.all(12),
              child: MaterialButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("Shop_Now");
                },
                child: Image.asset(_image_url[i]),
              ),
            );
          }),
    );
  }
}
