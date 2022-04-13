import 'package:flutter/material.dart';
import 'package:flutter9/Main/main.dart';

class Sales_Start_In extends StatelessWidget {
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        height: 125,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(top: 15, bottom: 10),
        decoration: BoxDecoration(
          color: isSwitched==false? Colors.blueGrey.withOpacity(0.2) : Colors.white.withOpacity(0.5),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Stack(
          overflow: Overflow.visible,
          children: [
            Positioned(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Denim Wear",
                    style: TextStyle(color: isSwitched==false? Colors.black : Colors.black, fontSize: 13,fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 3,),
                  Text(
                    "Sales Starts In",
                    style: TextStyle(
                        color: isSwitched== false? Colors.black : Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.red),
                        padding: EdgeInsets.all(5),
                        child: Column(
                          children: [
                            Text(
                              "Hours",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: isSwitched== false? Colors.white : Colors.black),
                            ),
                            Text(
                              "0 -",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: isSwitched== false? Colors.white : Colors.black),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.red),
                        padding: EdgeInsets.all(5),
                        child: Column(
                          children: [
                            Text(
                              "Minutes",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: isSwitched== false? Colors.white : Colors.black),
                            ),
                            Text(
                              "0 -",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: isSwitched== false? Colors.white : Colors.black),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.red),
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          children: [
                            Text(
                              "Seconds",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: isSwitched== false? Colors.white : Colors.black),
                            ),
                            Text(
                              "0 -",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: isSwitched== false? Colors.white : Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    "Explore Now",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: isSwitched== false? Colors.black : Colors.white, fontSize: 17),
                  ),
                ],
              ),
            ),
            // **************************************************** Banner Image ***********************************************************
            Positioned(
                left: 150,
                bottom: 0.1,
                child: Image.asset(
                  "images/banner-image.png",
                  height: 140,
                  fit: BoxFit.fitHeight,
                )),
          ],
        ));
  }
}
