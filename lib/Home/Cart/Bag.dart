import 'package:flutter/material.dart';
import 'package:flutter9/Main/main.dart';

String Visa = "";

class Bag extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BagState();
  }
}

class BagState extends State<Bag> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Delivery Details"),
        backgroundColor: isSwitched== false? Colors.white : Colors.black,
        elevation: 0,
        foregroundColor: isSwitched== false? Colors.black : Colors.white,
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          // ****************** First Container ********************
          Container(
            height: 220,
            color: Colors.blueGrey.withOpacity(0.1),
            margin: const EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Radio(
                            value: "eg",
                            groupValue: Visa,
                            onChanged: (value) {
                              setState(() {
                                Visa = value.toString();
                              });
                            }),
                        Text(
                          "Carolina S Seo",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(4),
                      margin: const EdgeInsets.only(right: 15),
                      color: Colors.red,
                      height: 25,
                      width: 45,
                      child: Text(
                        "HOME",
                        style: TextStyle(color: isSwitched== false? Colors.white : Colors.black, fontSize: 13),
                      ),
                    )
                  ],
                ),
                // *************************** End First Row ****************************************
                Row(
                  children: const [
                    SizedBox(
                      width: 48,
                    ),
                    Text(
                      "3501 Maloy Court,",
                      style: TextStyle(color: Colors.grey, fontSize: 17),
                    )
                  ],
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 48,
                    ),
                    Text(
                      "East Elmhurst, New York City",
                      style: TextStyle(color: Colors.grey, fontSize: 17),
                    )
                  ],
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 48,
                    ),
                    Text(
                      "NY 11369",
                      style: TextStyle(color: Colors.grey, fontSize: 17),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 48,
                    ),
                    Text(
                      "Phone No: 903-239-1284",
                      style: TextStyle(fontSize: 17),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 48,
                    ),
                    MaterialButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed("Delivery_Details");
                      },
                      child: Text(
                        "Remove",
                        style: TextStyle(
                            color: isSwitched== false? Colors.white : Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    // ****************************** Another Button ****************************
                    MaterialButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed("Delivery_Details");
                      },
                      child: Text(
                        "Edit",
                        style: TextStyle(
                            color: isSwitched== false? Colors.white : Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      color: Colors.red,
                    ),
                  ],
                )
              ],
            ),
          ),
          // ****************** First Container ********************
          Container(
            height: 220,
            color: Colors.blueGrey.withOpacity(0.1),
            margin: const EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Radio(
                            value: "em",
                            groupValue: Visa,
                            onChanged: (value) {
                              setState(() {
                                Visa = value.toString();
                              });
                            }),
                        Text(
                          "Arthur M Willingham",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      margin: const EdgeInsets.only(right: 15),
                      color: Colors.red,
                      height: 25,
                      width: 55,
                      child: Text(
                        "OFFICE",
                        style: TextStyle(color: isSwitched== false? Colors.white : Colors.black, fontSize: 13),
                      ),
                    )
                  ],
                ),
                // *************************** End First Row ****************************************
                Row(
                  children: const [
                    SizedBox(
                      width: 48,
                    ),
                    Text(
                      "3059 Elk City Road,",
                      style: TextStyle(color: Colors.grey, fontSize: 17),
                    )
                  ],
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 48,
                    ),
                    Text(
                      "East Elmhurst, New York City",
                      style: TextStyle(color: Colors.grey, fontSize: 17),
                    )
                  ],
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 48,
                    ),
                    Text(
                      "NY 254786",
                      style: TextStyle(color: Colors.grey, fontSize: 17),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 48,
                    ),
                    Text(
                      "Phone No: 317-898-0622",
                      style: TextStyle(fontSize: 17),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 48,
                    ),
                    MaterialButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed("Delivery_Details");
                      },
                      child: Text(
                        "Remove",
                        style: TextStyle(
                            color: isSwitched== false? Colors.white : Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    // ****************************** Another Button ****************************
                    MaterialButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed("Delivery_Details");
                      },
                      child: Text(
                        "Edit",
                        style: TextStyle(
                            color: isSwitched== false? Colors.white : Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      color: Colors.red,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 15, right: 15),
            padding: const EdgeInsets.only(top: 5),
            child: MaterialButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed("main_page");
              },
              child: Text(
                "Add A new Address",
                style: TextStyle(color: Colors.red),
              ),
              color: isSwitched== false? Colors.white : Colors.black,
              elevation: 0.5,
              shape: const RoundedRectangleBorder(
                  side: BorderSide(width: 0.5, color: Colors.red)),
            ),
          ),
        ],
      ),
    );
  }
}
