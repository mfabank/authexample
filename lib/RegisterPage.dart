import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String _email, _pass;
  var _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Form(
              key: _key,
              child: Column(
                children: [
                  SizedBox(height: 50),
                  TextFormField(
                    validator: (input) {
                      if (input.isEmpty) {
                        return "Lütfen emaili boş bırakmayınız";
                      }
                    },
                    onSaved: (input) => _email = input,
                    decoration: InputDecoration(
                      labelText: "EMAIL",
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (input) {
                      if (input.isEmpty) {
                        return "Lütfen şifreyi boş bırakmayınız";
                      } else if (input.length < 6) {
                        return "Lütfen en az 6 karakter seçin";
                      }
                    },
                    onSaved: (input) => _pass = input,
                    decoration: InputDecoration(
                      labelText: "PASSWORD",
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),
                    obscureText: true,
                  ),
                ],
              ),
            ),
            RaisedButton(child: Text("Kayıt"),
            onPressed: (){}),
          ],
        ),
      ),
    );
  }
}
