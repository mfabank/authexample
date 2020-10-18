import 'package:authexample/auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent[100],
      appBar: AppBar(
        title: Text("Auth Deneme"),
        backgroundColor: Colors.deepOrangeAccent,
        actions: [
          FlatButton.icon(
            icon: Icon(Icons.person),
            label: Text("Çıkış"),
            onPressed: () async {
              await _auth.singOut();
            },
          )
        ],
      ),
    );
  }
}
