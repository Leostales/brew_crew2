import 'package:brew_crew/services/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:brew_crew/models/user.dart';
import 'package:brew_crew/services/database.dart';
import 'package:brew_crew/services/sign_in.dart';
import 'package:brew_crew/Screens/authenticate/register.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showSignIn = true;

  String password = "";
  String email = "";
  List<MyUser> users = [];
  bool typing = false;
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    typing = false;
  }

  void toggleView() {
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return SignIn(toggleView: toggleView);
    } else {
      return Register(toggleView: toggleView);
    }
    // return Scaffold(
    //   backgroundColor: Colors.brown[100],
    //   appBar: AppBar(
    //     backgroundColor: Colors.brown[300],
    //     title: const Text("Sign in to Brew Crew"),
    //     centerTitle: false,
    //     elevation: 0,
    //     actions: const [
    //       Padding(
    //         padding: EdgeInsets.fromLTRB(20.0,20.0,0.0,20.0),
    //         child: Icon(
    //           Icons.person,
    //           color: Colors.black,
    //           size: 30,
    //         ),
    //       ),
    //       Padding(
    //         padding: EdgeInsets.all(10.0),
    //         child: Center(
    //           child: Text(
    //             "Register",
    //             style: TextStyle(
    //               color: Colors.black,
    //             )
    //           )
    //         ),
    //       ),
    //     ]
    //   ),
    //   body: Column(
    //     // padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
    //     children: <Widget>[
    //       Card(
    //         child: ListTile(
    //           title: TextField(
    //               decoration: const InputDecoration(
    //                 border: InputBorder.none,
    //                 contentPadding: EdgeInsets.all(10.0),
    //                 hintText: 'email',
    //               ),
    //               controller: _controller1,
    //               onChanged: (text){
    //                 email = text;
    //               }
    //           ),
    //         ),
    //       ),
    //       Card(
    //         child: ListTile(
    //           title: TextField(
    //               decoration: const InputDecoration(
    //                 border: InputBorder.none,
    //                 contentPadding: EdgeInsets.all(10.0),
    //                 hintText: 'password',
    //               ),
    //               controller: _controller2,
    //               onChanged: (text){
    //                 password = text;
    //               }
    //           ),
    //         ),
    //       ),
    //       RaisedButton(
    //         onPressed: () {
    //           print(email);
    //           print(password);
    //           for (var user in users) {
    //             if ((user.email.toLowerCase() == email.toLowerCase()) && (user.password == password)) {
    //               Navigator.pushNamed(context, '/home');
    //             }
    //           }
    //         },
    //         child: const Text(
    //           'Sign In',
    //           style: TextStyle(
    //             color: Colors.white,
    //           ),
    //         ),
    //         color: Colors.pink[400],
    //       ),
    //     ]
    //   ),
    // );
  }
}