import 'package:flutter/material.dart';
import 'package:flutter9/Main/main.dart';

import '../Home/Related_To_Kids_Corner.dart';
var _Ready_yellow_Icon = const Icon(Icons.star,color: Colors.orange,size: 22,);
var _Ready_White_Icon = Icon(Icons.star_border,color: isSwitched== false? Colors.black : Colors.white,size: 22,);
var _Ready_Five_Icon = Row(children: [_Ready_yellow_Icon,_Ready_yellow_Icon,_Ready_yellow_Icon,_Ready_yellow_Icon,_Ready_White_Icon],);
List _items = [
  {"title":"White Denim Jacket","url":"images/28.jpg"},
  {"title":"Blue Denim t-Shirt","url":"images/18.jpg"},
  {"title":"Black Denim t-Shirt","url":"images/22.jpg"},
  {"title":"Green Denim t-Shirt","url":"images/15.jpg"},
  {"title":"Orange Denim Jacket","url":"images/29.jpg"},
];
// The Beginning of The Kids Corner
class May_Also_like extends StatelessWidget {
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 260,
      margin: EdgeInsets.only(top: 12),
      child: GridView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,childAspectRatio: 1.7,mainAxisSpacing: 20,),
        itemCount: _items.length,
        itemBuilder: (context,i){
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                _items[i]["url"],
                height: 190,
                fit: BoxFit.fitHeight,
              ),
              const SizedBox(height: 5,),
              _Ready_Five_Icon, // The main Five Icon made on the top of this page before
              const SizedBox(height: 5,),
              Text(
                _items[i]["title"],
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13,color: isSwitched==false? Colors.black:Colors.white),
              ),
              const SizedBox(height: 5,),
              Ready_Row(),                       // This class contain this row 32.000$ 35.00$ 20%
            ],
          );
        },
      ),
    );
  }
}
