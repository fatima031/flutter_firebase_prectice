import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:online/firebase_options.dart';
import 'package:online/view/login.dart';
// import 'package:online/view/signUp.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // theme: ThemeData(fontFamily: "Kanit"),
        home: Scaffold(body: loginView()));
  }
}
