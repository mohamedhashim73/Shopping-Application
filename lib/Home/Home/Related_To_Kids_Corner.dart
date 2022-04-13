import 'package:flutter/material.dart';
import '../../Main/main.dart';
class Ready_Row extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Row(
      children: [
        Text(
          "32.00 \$",
          style: TextStyle(fontSize: 15,color: isSwitched==false? Colors.black: Colors.white),
        ),
        SizedBox(width: 5,),
        Text(
          "35.00 \$",
          style: TextStyle(fontSize: 15, decoration: TextDecoration.lineThrough,color: isSwitched==false? Colors.black: Colors.white),
        ),
        SizedBox(width: 5,),
        const Text(
          "20%",
          style: TextStyle(fontSize: 15,color: Colors.red,fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}