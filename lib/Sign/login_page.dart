import 'package:flutter/material.dart';
import 'package:flutter9/Main/main.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginState();
  }
}

class LoginState extends State<Login> {
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
          padding: const EdgeInsets.all(35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 120,
              ),
              Text(
                "Sign In",
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
                        onEditingComplete: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  contentPadding: const EdgeInsets.only(
                                      bottom: 0, top: 30, left: 20, right: 20),
                                  actionsPadding: const EdgeInsets.only(top: 0),
                                  content: const Text(
                                    "Do you want to save your Data ?",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue,
                                        fontSize: 16),
                                  ),
                                  actions: [
                                    MaterialButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text("Ok"),
                                    ),
                                    MaterialButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text("Cancel"),
                                    ),
                                  ],
                                );
                              });
                        },
                      ),
                      // *********************** End ... TextFormField **********************
                      const SizedBox(
                        height: 25,
                      ),
                      Container(
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(
                              width: 50,
                            ),
                            const Text(
                              "Sign in",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            IconButton(
                              icon: Icon(Icons.navigate_next),
                              onPressed: () {
                                if (_formstate.currentState!.validate()) {
                                  Navigator.of(context)
                                      .pushReplacementNamed("main_page");
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                      // *************** End MaterialButton ********************
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Don't have an account?",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextButton(
                            child: const Text(".. Create One",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue,
                                    fontSize: 16)),
                            onPressed: () {
                              Navigator.of(context)
                                  .pushReplacementNamed("sign_up");
                            },
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Text(
                        "--- OR ---",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          CircleAvatar(
                            backgroundImage: AssetImage("images/fb.png"),
                          ),
                          CircleAvatar(
                            backgroundImage: AssetImage("images/go.png"),
                            radius: 20,
                          ),
                          CircleAvatar(
                            backgroundImage: AssetImage("images/in.jpg"),
                          ),
                        ],
                      )
                    ],
                  )),
            ],
          ),
        ),
      ],
    ));
  }
}
