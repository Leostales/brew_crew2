import 'package:flutter/material.dart';
import 'package:brew_crew/Screens/home/home.dart';
import 'package:brew_crew/Screens/authenticate/authenticate.dart';
import 'package:brew_crew/models/user.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<MyUser?>(context);
    print(user);

    // return either Home or Authenticate widget
    if (user == null) {
      return Authenticate();
    } else {
      return Home(uid: user.uid,);
    }
  }
}
