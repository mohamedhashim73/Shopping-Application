import 'package:flutter/material.dart';
import 'package:flutter9/Main/main.dart';
final List _drawer_title = ["Pages","Home","Shop By Category","Orders","Your Wishlist","Your Account","Language","Notifications","Settings","About Us","Help/Customer Care",];
List<Widget> _First_9_Drawer_Icon = const [
  Icon(Icons.contact_page,color: Colors.grey,size: 27,),
  Icon(Icons.home,color: Colors.grey,size: 27,),
  Icon(Icons.shopping_cart,color: Colors.grey,size: 27,),
  Icon(Icons.save_sharp,color: Colors.grey,size: 27,),
  Icon(Icons.favorite_outline_sharp,color: Colors.grey,size: 27,),
  Icon(Icons.account_circle,color: Colors.grey,size: 27,),
  Icon(Icons.language,color: Colors.grey,size: 27,),
  Icon(Icons.notifications,color: Colors.grey,size: 27,),
  Icon(Icons.settings,color: Colors.grey,size: 27,),
  Icon(Icons.info_rounded,color: Colors.grey,size: 27,),
  Icon(Icons.call,color: Colors.grey,size: 27,),
];
// Fisrt Class
class Profile_page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Profile_pageState();
  }
}

// Second Class
class Profile_pageState extends State<Profile_page> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        leading: const Icon(Icons.arrow_back_sharp),
        backgroundColor: isSwitched== false? Colors.white : Colors.black ,
        foregroundColor: isSwitched== false? Colors.black : Colors.white,
        elevation: 10,
      ),
      body: Container(
        color: isSwitched==false? Colors.white : Colors.black,
        child: ListView(
          shrinkWrap: true,
          children: [
            // First Container on The ListView
            Container(
              height: 120,
              color: isSwitched==false? Colors.grey.withOpacity(0.7): Colors.grey.withOpacity(0.2),
              child: Stack(
                children: [
                  Positioned(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CircleAvatar(
                              backgroundImage: AssetImage("images/ne.jpg"),
                              radius: 40,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Mohamed Hashim",style: TextStyle( fontWeight: FontWeight.bold, fontSize: 15,color: isSwitched==false? Colors.black:Colors.white),
                                ),
                                SizedBox(height: 4,),
                                Text(
                                  "mohamedhashim22@gmail.com",
                                  style: TextStyle(fontSize: 15,color: isSwitched==false? Colors.black:Colors.white),
                                ),
                                MaterialButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pushNamed("Edit_profile");
                                  },
                                  child: const Text(
                                    "Edit",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                  color: isSwitched==false? Colors.red : Colors.orange,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // The Second Container who have the ListTile >>>>>>>>>>>>>>>>>>>>>>> Dark Mode >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
            Container(
              child: ListTile(
                title: Text("Dark Mode",style: TextStyle(fontSize: 16.5,fontWeight: FontWeight.bold,color: isSwitched==false? Colors.black:Colors.white),),
                leading: Icon(Icons.settings,size: 25,color: Colors.grey),
                trailing: Switch(
                  value: isSwitched,
                  activeColor: isSwitched== false? Colors.white : Colors.white,
                  onChanged: (val) {
                    setState(
                          () {
                        isSwitched = val;
                      },
                    );
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
                      SizedBox(height: 3,),
                      // Divider(color: isSwitched== false? Colors.black.withOpacity(0.15) : Colors.white,thickness: 0.1,),
                      Container(
                        padding: const EdgeInsets.all(8),
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
                                Text(_drawer_title[i],style: TextStyle(
                                      fontSize: 15,fontWeight: FontWeight.bold,color: isSwitched==false? Colors.black:Colors.white),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                }),
            // ****************************** >>>>>>>>>>>>>>>>>>>>>> the last container on this drawer ***************************************
          ],
        ),
      )
    );
  }
}
