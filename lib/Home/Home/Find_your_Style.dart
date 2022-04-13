import 'package:flutter/material.dart';
import 'package:flutter9/Main/main.dart';
import 'package:flutter9/Provider/Provider.dart';
import 'package:provider/provider.dart';

import 'Related_To_Kids_Corner.dart';
Icon _Ready_Red_Icon = const Icon(Icons.favorite,color: Colors.red,size: 22,);
Icon _Ready_White_Icon = Icon(Icons.favorite_outline_sharp,color: isSwitched== false? Colors.black : Colors.white,size: 22,);
var _Ready_Five_Icon = Row(children: [_Ready_Red_Icon,_Ready_Red_Icon,_Ready_Red_Icon,_Ready_Red_Icon,_Ready_White_Icon],);
List _items1 = [
  {"title":"White Denim Jacket","url":"images/22.jpg"},
  {"title":"Blue Denim t-Shirt","url":"images/31.jpg"},
  {"title":"Black Denim t-Shirt","url":"images/17.jpg"},
  {"title":"Green Denim t-Shirt","url":"images/24.jpg"},
];
List _items2 = ["images/12.jpg","images/n.jpg","images/29.jpg","images/31.jpg"];
List _items3 = ["images/14.jpg","images/15.jpg","images/18.jpg","images/s2.jpg"];
// ********************************* The Beginning of The Class Find Your Style *********************************************
class Find_Your_Style extends StatelessWidget {
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer<Prov_button>(                                               // this class have index = 1,2,3
        builder: (context,prov,child){
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5,),
              Text("Find your Style",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.5,color: isSwitched==false? Colors.black:Colors.white),),
              const SizedBox(height: 2,),
              const Text("Super Summer Sale",style: TextStyle(fontSize: 15, color: Colors.grey),),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    flex: 1,
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.all(10),
                      onPressed: () {prov.method1();},
                      color: prov.index == 1? Colors.red : Colors.white12.withOpacity(0.5),
                      child: Text(
                        "Trending Now",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14,
                            color: prov.index == 1? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    flex: 1,
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.all(5),
                      onPressed: () {prov.method2();},
                      color: prov.index == 2? Colors.red : Colors.white12.withOpacity(0.5),
                      child: Text(
                        "Top Picks",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15,color: prov.index == 2? Colors.white : Colors.black,),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    flex: 1,
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.all(10),
                      onPressed: () {prov.method3();},
                      color: prov.index == 3? Colors.red : Colors.white12.withOpacity(0.5),
                      minWidth: 10,
                      child: Text(
                        "Top Rated",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15,color: prov.index == 3? Colors.white : Colors.black,),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 7,),
              // ********************* GridView For 4 Photos *************************
              Container(
                child: GridView.builder(
                  gridDelegate: const
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 0,crossAxisSpacing: 10,childAspectRatio: 0.6,),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (context,i){
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                            prov.index==1? _items1[i]["url"] :
                            prov.index==2? _items2[i] :
                            prov.index==3? _items3[i] :
                            _items1[i]["url"],
                             height: 200,fit: BoxFit.fitHeight,),
                        const SizedBox(height: 5,),
                        _Ready_Five_Icon, // The Main Five Icon made on top and i did it to make use it easy later
                        Text( _items1[i]["title"],
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13,color: isSwitched==false? Colors.black:Colors.white),),
                        Ready_Row(),                       // This class contain this row 32.000$ 35.00$ 20%
                      ],
                    );
                  },
                ),
              ),
            ],
          );
        });
  }
}
