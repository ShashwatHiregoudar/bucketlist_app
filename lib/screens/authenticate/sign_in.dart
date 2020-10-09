//import 'dart:core';

import 'package:bucketlist_app/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();

  String email = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          //backgroundColor: Colors.accents,
          elevation: 0.0,
          title: Text("BucketList"),
        ),
        body: Container(
          EdgeInsets.symmetric(vertical: 20, horizontal: 50),
            child: Form(
              child: Column(
              children: <Widget>[
                SizedBox.fromSize(),
                TextFormField(
                  onChanged: (val) {
                    setState(() => email = val);
                  },
                ),
                SizedBox.fromSize(),
                TextFormField(
                  obscureText: true,
                  onChanged: (val) {
                    setState(() => password = val);
                  },
                ),
                SizedBox.fromSize(),
                RaisedButton(
                    color: Colors.pink,
                    child: Text("Sign In"),
                    onPressed: () async {
                      print(email);
                      print(password);
                    })
              ],
            )
            )
            )
    );
  }
}
