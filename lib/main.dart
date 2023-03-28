// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'home/bars.dart';

// import 'home_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

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
    return Bars();
  }
}
