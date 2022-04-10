import 'package:flutter/material.dart';
import 'package:brew_crew/Screens/wrapper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:brew_crew/services/auth.dart';
import 'package:provider/provider.dart';
import 'package:brew_crew/models/user.dart';

// void main() => runApp(const MyApp());

Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return StreamProvider<MyUser?>.value(
      initialData: null,
      value: AuthService().user,
      child: const MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}

