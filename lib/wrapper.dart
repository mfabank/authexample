import 'package:authexample/authentication.dart';
import 'package:authexample/homepage.dart';
import 'package:authexample/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    if(user == null){
      return Authentication();
    }else {
      return HomePage();
    }

    return Authentication();
  }
}
