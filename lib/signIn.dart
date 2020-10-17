import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'auth.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent[100],
      appBar: AppBar(
        title: Text("Sign In"),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 50),
        child: RaisedButton(
          child: Text("Anonim Gir"),
          onPressed: () async {
            dynamic result = await _auth.signInAnon();
            if(result == null) {
              print("Giriş Yapılamadı!");
            }
            else{
              print("Giriş Başarılı.");
              print(result.uid);
            }
          },
        ),
      ),
    );
  }
}
