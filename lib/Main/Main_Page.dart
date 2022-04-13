import 'package:flutter/material.dart';
import '../Home/Cart/Cart_page.dart';
import '../Home/Category/Category_Page.dart';
import '../Home/Home/Home_Page.dart';
import '../Home/Profile/Profile_Page.dart';
import '../Home/WhiteList/WhiteList_page.dart';
import 'package:flutter9/Main/main.dart';
// the 5 Pages/Widgets to use it throw BottomNavigationBar
List<Widget> main_pages_widget = [
  Home_Page(),
  Category(),
  Cart(),
  Whitelist(),
  Profile_page(),
];
int bottom_navigation_index = 0; // BottomNavigationBar
bool notify = false; // Dark Mode
// Some Variables used during Making Drawer()
final List _drawer_title = [
  "Pages",
  "Home",
  "Shop By Category",
  "Orders",
  "Your Wishlist",
  "Your Account",
  "Language",
  "Notifications",
  "Settings",
  "About Us"
];
final List _drawer_subtitle = [
  "Elements & Other Pages",
  "Offers, Top Deals",
  "Men, Women, Kids, Beauty",
  "OnGoing Orders, Recent Orders",
  "your Save Products",
  "Profile, Settings, Saved Cards",
  "Select Your language here",
  "Offers, Order Tracking Messages",
  "Dark Mode, rtl , Notifications",
  "About Multikart"
];
final List<Widget> _First_9_Drawer_Icon = [
  const Icon(Icons.contact_page,color: Colors.grey,size: 27,),
  const Icon(Icons.home,color: Colors.grey,size: 27,),
  const Icon(Icons.shopping_cart,color: Colors.grey,size: 27,),
  const Icon(Icons.save_sharp,color: Colors.grey,size: 27,),
  const Icon(Icons.favorite_outline_sharp,color: Colors.grey,size: 27,),
  const Icon(Icons.account_circle,color: Colors.grey,size: 27,),
  const Icon(Icons.language,color: Colors.grey,size: 27,),
  const Icon(Icons.notifications,color: Colors.grey,size: 27,),
  const Icon(Icons.settings,color: Colors.grey,size: 27,),
  const Icon(Icons.info_rounded,color: Colors.grey,size: 27,),
];
// Class for Main Page on the App which can use it to go for 5 pages like Home >> Category >> Wishlist >> Profile >> Cart
class Main_Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Main_PageState();
  }
}

// Class of Main_PageState
class Main_PageState extends State<Main_Page> {
  @override
  GlobalKey<ScaffoldState> scaffoldkey =
      new GlobalKey<ScaffoldState>(); // to control for the Drawer
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: scaffoldkey,
      // Bottom Navigation Bar for 5 Widgets like Home , Category , profile , Cart , Whitelist
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottom_navigation_index,
        selectedItemColor: Colors.red,
        selectedFontSize: 15,
        unselectedFontSize: 13,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        showUnselectedLabels: true,
        unselectedItemColor: isSwitched== false? Colors.black : Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home",backgroundColor: isSwitched==false? Colors.white:Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.category_rounded), label: "Category",backgroundColor: isSwitched==false? Colors.white:Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart",backgroundColor: isSwitched==false? Colors.white:Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_outline_sharp), label: "Whitelist",backgroundColor: isSwitched==false? Colors.white:Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile",backgroundColor: isSwitched==false? Colors.white:Colors.black),
        ],
        onTap: (index) {
          setState(() {
            bottom_navigation_index = index;
          });
        },
      ),
      drawer: Drawer(
        child: Container(
          color: isSwitched==false? Colors.white : Colors.black,
          child: ListView(
            shrinkWrap: true,
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: isSwitched==false? Colors.blueGrey.withOpacity(1): Colors.blueGrey),
                currentAccountPicture: const CircleAvatar(
                  backgroundImage: AssetImage("images/ne.jpg"),
                ),
                accountName: const Text(
                  "Mohamed Hashim",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                accountEmail: const Text(
                  "mohamedhashimrezk22@gmail.com",
                  style: TextStyle(fontSize: 14),
                ),
              ),
              Container(
                child: ListTile(
                  title: Text("Dark Mode",
                    style: TextStyle(fontSize: 16.5,color: isSwitched==false? Colors.black :Colors.white),),
                  leading: Icon(Icons.settings,size: 25,color: Colors.grey),
                  trailing: Switch(
                    value: isSwitched,
                    activeColor: isSwitched== false? Colors.black : Colors.white,
                    onChanged: (val) {setState(() {isSwitched = val;},);
                    },
                  ),
                ),
              ),
              // ************************************* The nine ListTile on the drawer *******************************
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: _drawer_title.length,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, i) {
                    return Column(
                      children: [
                        SizedBox(height: 5,),
                        // Divider(color: isSwitched== false? Colors.black.withOpacity(0.2) : Colors.white.withOpacity(0.3),thickness: 0.2,),
                        Container(
                          padding: const EdgeInsets.only(left: 8,right: 8,bottom: 8),
                          margin: const EdgeInsets.all(0),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 8,
                              ),
                              _First_9_Drawer_Icon[i],
                              const SizedBox(
                                width: 30,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    _drawer_title[i],
                                    style: TextStyle(
                                      fontSize: 15,fontWeight: FontWeight.bold,color: isSwitched== false? Colors.black : Colors.white,),
                                  ),
                                  const SizedBox(height: 5,),
                                  Text(
                                    _drawer_subtitle[i],
                                    style: const TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    );
                  }),
            ],
          ),
        )
      ),
      body: main_pages_widget.elementAt(bottom_navigation_index),
    );
  }
}
