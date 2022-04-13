import 'package:flutter/material.dart';
import 'package:flutter9/Sign/login_page.dart';
import 'package:flutter9/Provider/Provider.dart';
import 'package:flutter9/Sign/Sign%20Up_Page.dart';
import 'package:provider/provider.dart';
import '../Favorite/Big_Photo_In_Shop_Now.dart';
import '../Favorite/Shop_Now_Page.dart';
import '../Home/Cart/Bag.dart';
import '../Home/Cart/Cart_page.dart';
import '../Home/Category/Category_Page.dart';
import '../Home/Category/Category_Part2.dart';
import '../Home/Home/Home_Page.dart';
import 'Main_Page.dart';
import '../Home/Profile/Edit_Profile.dart';
import '../Home/Profile/Profile_Page.dart';
import '../Home/WhiteList/WhiteList_page.dart';
var Ready_Divider = Divider(color: Colors.grey.withOpacity(0.2),thickness: 2,);
bool isSwitched = false;
void main() {
  runApp(MyApp());
}
// Class MyApp which app start with it
class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context)=>Prov_cart(),),
          ChangeNotifierProvider(create: (context)=>Prov_button(),)
        ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Main_Page(),
        routes: {
          "login": (context) => Login(),
          "sign_up": (context) => Sign_Up(),
          "main_page": (context) => Main_Page(),
          "profile": (context) => Profile_page(),
          "Home_Page": (context) => Home_Page(),
          "Cart": (context) => Cart(),
          "Whitelist": (context) => Whitelist(),
          "Category": (context) => Category(),
          "Category_Part2": (context) => Category_Part2(),
          "Delivery_Details": (context) => Bag(),
          "Shop_Now": (context) => Shop_Now_page(),
          "Shop_Now_Photo": (context) => Shop_Now_Photo(),
          "Edit_profile": (context) => Edit_profile(),
        },
      ),
    );
  }
}

