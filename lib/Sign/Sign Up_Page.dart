import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter9/Main/main.dart';

class Sign_Up extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Sign_UpState();
  }
}

class Sign_UpState extends State<Sign_Up> {
  GlobalKey<FormState> _formstate = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: ListView(
      shrinkWrap: true,
      children: [
        Container(
          color: Colors.blueAccent.withOpacity(0.1),
          height: 750,
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 100,
              ),
              Text(
                "Sign Up",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 20, color: isSwitched== false? Colors.black : Colors.white),
              ),
              const SizedBox(
                height: 25,
              ),
              Form(
                  key: _formstate,
                  child: Column(
                    children: [
                      // ******************* UserName *****************
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          hintText: "Enter Name",
                        ),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                        keyboardType: TextInputType.name,
                        validator: (text) {
                          if (text!.length < 10) {
                            return "Name can't be less than 10 letters";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      // ******************* Email *****************
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          hintText: "Enter Email",
                        ),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                        keyboardType: TextInputType.emailAddress,
                        validator: (text) {
                          if (text!.length < 15) {
                            return "Email can't be less than 15 letters";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      // ******************* Password *****************
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.password),
                          hintText: "Enter Password",
                        ),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                        obscureText: true,
                        validator: (text) {
                          if (text!.length < 6) {
                            return "Password can't be less than 6 letters";
                          }
                          return null;
                        },
                      ),
                      // *********************** End ... TextFormField **********************
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 50,
                            ),
                            const Text(
                              "Sign Up",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            IconButton(
                              icon: Icon(Icons.navigate_next),
                              onPressed: () {
                                if (_formstate.currentState!.validate()) {
                                  Navigator.of(context).pushNamed("login");
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                      // *************** End MaterialButton ********************
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Have an Account ?",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextButton(
                            child: const Text("Sign in",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue,
                                    fontSize: 16)),
                            onPressed: () {
                              Navigator.of(context)
                                  .pushReplacementNamed("login");
                            },
                          ),
                        ],
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ],
    ));
  }
}
