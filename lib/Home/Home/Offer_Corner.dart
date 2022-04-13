import 'package:flutter/material.dart';

class Offer_Corner extends StatelessWidget {
  List _offers = ["Under 50.00", "Flat 20 OFF", "Buy 1 Get 1", "Upto 50% OFF"];
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: const EdgeInsets.only(bottom: 15, top: 8),
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
            childAspectRatio: 2.8),
        shrinkWrap: true,
        itemCount: 4,
        itemBuilder: (context, i) {
          return MaterialButton(
            padding: const EdgeInsets.all(5),
            color: Colors.white10.withOpacity(0.6),
            elevation: 1,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            child: Text(
              _offers[i],
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            onPressed: () {
              Navigator.of(context).pushNamed("Shop_Now");
            },
          );
        },
      ),
    );
  }
}
