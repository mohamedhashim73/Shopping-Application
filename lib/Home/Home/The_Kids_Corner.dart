import 'package:flutter/material.dart';
import 'package:flutter9/Main/main.dart';

import 'Related_To_Kids_Corner.dart';
var _Ready_Red_Icon = const Icon(Icons.favorite,color: Colors.red,size: 22,);
var _Ready_White_Icon = Icon(Icons.favorite,color: isSwitched==false? Colors.black : Colors.white,size: 22,);
var _Ready_Five_Icon = Row( children: [ _Ready_Red_Icon, _Ready_Red_Icon, _Ready_Red_Icon, _Ready_Red_Icon, _Ready_White_Icon ],);
// ********************************* The Beginning of The Kids Corner *************************************************************
class The_kids_Corner extends StatelessWidget {
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 260,
      margin: EdgeInsets.only(top: 12),
      child: GridView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 1.7,
          mainAxisSpacing: 20,
        ),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "images/28.jpg",
                height: 190,
                fit: BoxFit.fitHeight,
              ),
              SizedBox(height: 5,),
              _Ready_Five_Icon, // The main Five Icon made on the top of this page before
              SizedBox(height: 2,),
              Text(
                "White Denim Jacket",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13,color: isSwitched==false? Colors.black:Colors.white),
              ),
              SizedBox(height: 2,),
              Ready_Row(),                       // This class contain this row 32.000$ 35.00$ 20%
            ],
          ),
          // ************************** Second Photo *************************
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "images/14.jpg",
                height: 190,
                fit: BoxFit.fitHeight,
              ),
              SizedBox(height: 5,),
              _Ready_Five_Icon,
              SizedBox(height: 2,),
              Text(
                "Blue Denim t-Shirt",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13,color: isSwitched==false? Colors.black:Colors.white),
              ),
              SizedBox(height: 2,),
              Ready_Row(),                       // This class contain this row 32.000$ 35.00$ 20%
            ],
          ),
          // *************************** Third Photo *************************
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "images/29.jpg",
                height: 190,
                fit: BoxFit.fitHeight,
              ),
              SizedBox(height: 5,),
              _Ready_Five_Icon,
              SizedBox(height: 2,),
              Text(
                "Black Denim t-Shirt",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13,color: isSwitched==false? Colors.black:Colors.white),
              ),
              SizedBox(height: 2,),
              Ready_Row(),                       // This class contain this row 32.000$ 35.00$ 20%
            ],
          ),
        ],
      ),
    );
  }
}
