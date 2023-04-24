import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:soil_test/firebase/firebaseData.dart';
import 'home/bars.dart';

// import 'home_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  await initialization(null);

  runApp(
    MyApp(),
  );
}

Future initialization(BuildContext? context) async {
  await Future.delayed(
    Duration(seconds: 2),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Bars(),
    );
  }
}
