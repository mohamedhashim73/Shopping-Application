import 'package:flutter/material.dart';
import 'package:flutter9/Main/main.dart';

class Edit_profile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Edit_profileState();
  }
}

class Edit_profileState extends State<Edit_profile> {
  var selectedGender;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: const Text("Profile Settings"),
          backgroundColor: isSwitched== false? Colors.white : Colors.black,
          elevation: 1,
          shadowColor: Colors.white,
          foregroundColor: isSwitched== false? Colors.black : Colors.white,
        ),
        body: Container(
          color: isSwitched==false? Colors.white:Colors.black,
          child: ListView(
            shrinkWrap: true,
            children: [
              Container(
                margin: const EdgeInsets.only(right: 20, left: 20, bottom: 20),
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 100,
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        margin: const EdgeInsets.only(bottom: 10),
                        alignment: Alignment.center,
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            const Positioned(
                              child: CircleAvatar(
                                backgroundImage: AssetImage("images/z.png"),
                                radius: 40,
                              ),
                            ),
                            Positioned(
                              top: 58,
                              left: 62,
                              child: CircleAvatar(
                                child: const Icon(
                                  Icons.edit,
                                  size: 15,
                                ),
                                foregroundColor: Colors.red,
                                backgroundColor: isSwitched== false? Colors.white : Colors.black,
                                radius: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "Personal Details",
                        style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 17,color: isSwitched== false? Colors.black : Colors.white,),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      // ******************* First Name *****************
                      TextFormField(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(18),
                          labelText: "First Name",
                          labelStyle: TextStyle(color: isSwitched== false? Colors.black : Colors.white,fontSize: 15),
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 0.8, color: isSwitched==false? Colors.grey : Colors.white),),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue,width: 2),),
                        ),
                        style: TextStyle(fontSize: 17,color: isSwitched== false? Colors.black : Colors.white),
                        keyboardType: TextInputType.name,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      // ******************* Last Name *****************
                      TextFormField(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(18),
                          labelText: "Last Name",
                          labelStyle: TextStyle(color: isSwitched== false? Colors.black : Colors.white,fontSize: 15),
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 0.8, color: isSwitched==false? Colors.grey : Colors.white),),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue,width: 2),),
                        ),
                        style: TextStyle(fontSize: 17,color: isSwitched== false? Colors.black : Colors.white),
                        keyboardType: TextInputType.name,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      // ******************* Date Of Birth *****************
                      TextFormField(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(18),
                          labelText: "Date of Birth",
                          labelStyle: TextStyle(color: isSwitched== false? Colors.black : Colors.white,fontSize: 15),
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 0.8, color: isSwitched==false? Colors.grey : Colors.white),),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue,width: 2),),
                        ),
                        style: TextStyle(fontSize: 17,color: isSwitched== false? Colors.black : Colors.white),
                        keyboardType: TextInputType.datetime,
                      ),
                    ],
                  ),
                ),
              ),
              // ********************************* DropDownButton *****************************
              Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(right: 20, left: 20, bottom: 20),
                  padding: const EdgeInsets.all(10),
                  height: 55,
                  decoration: BoxDecoration(
                    border: Border.all(width: 0.8, color: isSwitched==false? Colors.grey:Colors.white),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      hint: Text("Gender",style: TextStyle(color: isSwitched==false? Colors.black:Colors.white),),
                      items: ["Man", "Women", "Other"]
                          .map((e) =>
                          DropdownMenuItem(child: Text("$e"), value: e))
                          .toList(),
                      onChanged: (val) {
                        setState(() {
                          selectedGender = val;
                          print(selectedGender);
                        });
                      },
                      value: selectedGender,
                    ),
                  )),
              // ********************************* The Phone Number ***************************
              Container(
                margin: const EdgeInsets.only(right: 20, left: 20),
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // ******************* Email *****************
                      TextFormField(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(18),
                          labelText: "Mobile Number",
                          labelStyle: TextStyle(color: isSwitched== false? Colors.black : Colors.white,fontSize: 15),
                          suffixText: "Change",
                          suffixStyle: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 15),
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 0.8, color: isSwitched==false? Colors.grey : Colors.white),),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue,width: 2),),
                        ),
                        style: TextStyle(fontSize: 17,color: isSwitched== false? Colors.black : Colors.white),
                        keyboardType: TextInputType.number,
                        maxLength: 11,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      // ******************* Password *****************
                      TextFormField(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(18),
                          labelText: "Password",
                          labelStyle: TextStyle(color: isSwitched== false? Colors.black : Colors.white,fontSize: 15),
                          suffixText: "Change",
                          suffixStyle: const TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 0.8, color: isSwitched==false? Colors.grey : Colors.white),),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue,width: 2),),
                        ),
                        style: TextStyle(fontSize: 17,color: isSwitched== false? Colors.black : Colors.white),
                        obscureText: true,
                      ),
                    ],
                  ),
                ),
              ),
              // ***************************************** Save Updates ****************************
              Container(
                margin: const EdgeInsets.only(right: 20, left: 20, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MaterialButton(
                      minWidth: 150,
                      height: 40,
                      elevation: 5,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                      splashColor: isSwitched== false? Colors.black : Colors.white,
                      onPressed: () {},
                      color: isSwitched== false? Colors.white : Colors.white,
                      child: const Text(
                        "Cancel",
                        style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                      ),
                    ),
                    MaterialButton(
                      minWidth: 150,
                      elevation: 10,
                      splashColor: isSwitched== false? Colors.white : Colors.black,
                      height: 40,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                      onPressed: () {},
                      color: Colors.orange,
                      child: Text(
                        "Save Updates",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17, color: isSwitched== false? Colors.white : Colors.black),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
